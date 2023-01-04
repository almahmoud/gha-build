#!/bin/bash
set -xe
git pull origin main || git reset --hard origin/main
export LIBRARY=$1
export PKG=$2
export runstart=$3
mkdir -p $LIBRARY
mkdir -p /tmp/tars/

# Get direct dependency list to pull their libraries from their build run
sed -n "/^    \"$PKG\"/,/^    \"/p" directdeps.json | grep '^        "' | awk -F'"' '{print $2}' > /tmp/deps

function process_dep() {
  if [ -d $LIBRARY/$1 ]; then
    echo "Dependency $1 is already found."
    return
  else
  	bash -c "curl -o $(dirname $LIBRARY)/$1.tar.gz https://js2.jetstream-cloud.org:8001/swift/v1/gha-build/running/$runstart/$1.tar.gz && ( cd $(dirname $LIBRARY) && tar -xvf $1.tar.gz && rm $1.tar.gz )"
  fi
}

export -f process_dep

if [ -s /tmp/deps ]; then
  cat /tmp/deps | xargs -i bash -c "process_dep {}"
else
  echo "No dependencies"
fi


# Monitoring functions from https://github.com/YashChat/CPU-and-Memory-Monitor/blob/master/monitor.sh

# Period for which to calculate usage
TIME_INTERVAL=5

#This function calculates the CPU usage percentage given the clock ticks in the last $TIME_INTERVAL seconds
function jiffies_to_percentage {

        #Get the function arguments (oldstime, oldutime, newstime, newutime)

        #Calculate the elpased ticks between newstime and oldstime (diff_stime), and newutime and oldutime (diff_stime)
        let diff_stime=$3-$1
        let diff_utime=$4-$2

        #You will use the following command to calculate the CPU usage percentage. $TIME_INTERVAL is the user-provided time_interval
        #Note how we are using the "bc" command to perform floating point division

        echo "100 * ( ($diff_stime + $diff_utime) / $hertz) / $TIME_INTERVAL" | bc -l
}

#Returns a percentage representing the CPU usage
function calculate_cpu_usage {

        #CPU usage is measured over a periode of time. We will use the user-provided interval_time value to calculate 
        #the CPU usage for the last interval_time seconds. For example, if interval_time is 5 seconds, then, CPU usage
        #is measured over the last 5 seconds


        #First, get the current utime and stime (oldutime and oldstime) from /proc/{pid}/stat
        #Parse the file  /proc/{pid}/stat to extract the above values from the indicated column numbers
        oldstime=$(cat /proc/$PID/stat | awk '{print $14}')
        oldutime=$(cat /proc/$PID/stat | awk '{print $15}')

        #Sleep for time_interval
        sleep $TIME_INTERVAL

        #Now, get the current utime and stime (newutime and newstime) /proc/{pid}/stat
        #Parse the file  /proc/{pid}/stat to extract the above values from the indicated column numbers
        newstime=$(cat /proc/$PID/stat | awk '{print $14}')
        newutime=$(cat /proc/$PID/stat | awk '{print $15}')

        #The values we got so far are all in jiffier (not Hertz), we need to convert them to percentages, we will use the function
        #jiffies_to_percentage
        percentage=$(jiffies_to_percentage $oldutime $oldstime $newutime $newstime)

        #Return the usage percentage
        echo "$percentage" #return the CPU usage percentage
}

function calculate_mem_usage
{       
        #Let us extract the VmRSS value from /proc/{pid}/status
        mem_usage=`cat /proc/$PID/status | grep VmRSS | awk '{print $2}'`
        #Return the memory usage
        echo "$mem_usage"
}


function monitor
{
        while [ -n "$(ls /proc/$PID)" ] #While this process is alive
        do
                #part 1
                cpu_usage=$(calculate_cpu_usage)

                #part 2
                mem_usage=$(calculate_mem_usage)

                mkdir -p logs/usage/rstudio-binary

                echo $cpu_usage > logs/usage/rstudio-binary/$PKG.cpu 
                echo $mem_usage > logs/usage/rstudio-binary/$PKG.mem

        done
}

# Build package, and exit with code 0 only on success
# Redirect all stout/stderr to log
(time bash -c "echo $$ > /tmp/${PKG}_pid; export PID=$(cat /tmp/${PKG}_pid); monitor &; exec Rscript -e \"Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('$LIBRARY', p); .libPaths(p); if(BiocManager::install('$PKG', INSTALL_opts = '--build', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)\"" 2>&1 ) 2>&1 | tee /tmp/$PKG

# Get the 3 lines of times into time log
echo "$(grep -A2 '^real' /tmp/$PKG)" > logs/times/rstudio-binary/$PKG

mv *.tar.gz /tmp/tars/
