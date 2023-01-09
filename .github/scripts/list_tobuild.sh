#!/bin/bash
set -xe
git pull origin main || true
git reset --hard origin/main

mkdir -p lists
touch tobuild.txt
if [ ! -s tobuild.txt ]; then
      # Get all packages with no deps in the working list
      # Make a file with "readytobuild" for each path lists/{pkg}
      grep -Pzo "(?s)\s*\"\N*\":\s*\[\s*\]" packages.json | awk -F'"' '{print $2}' | grep -v '^$' | xargs -i bash -c 'touch lists/{} && if ! [ -s "lists/failed/{}" ]; then if ! [ -s "lists/{}" ]; then echo "readytobuild" > lists/{}; fi; fi'

      # Add list of packages to build
      grep -lr "readytobuild" lists/ | sed 's#lists/##g' > tobuild.txt

      if [ ! -s tobuild.txt ]; then
      else
            mkdir -p logs
            counter=0
            if [ -f "logs/retries_counter" ]; then
                counter=$(<logs/retries_counter)
            fi
            counter=$((counter+1))
            echo $counter > logs/retries_counter
            if [ $counter -gt 10 ]; then
                echo "READY" > logs/write_PACKAGES
            fi
            git add logs
      fi

      git add lists
      git add tobuild.txt
      git commit -m "Adding tobuild list"
      git push
fi
