#!/bin/bash
DEPNAME=$1
LIBRARY=$2
GITREPO=${3:-"almahmoud/gha-build"}

RUNID=$(cat logs/run_ids/rstudio-binaries/$DEPNAME | grep "runs/" | head -n 1 | awk -F'runs/' '{print $2}' | awk -F'/' '{print $1}')
ARTIFACT_ID=$(gh api -H "Accept: application/vnd.github+json" /repos/$GITREPO/actions/artifacts?name="artifact-$DEPNAME" --jq ".artifacts[] | select(.workflow_run.id==$RUNID) | .id")

echo $RUNID
echo $ARTIFACT_ID

( cd $(dirname $LIBRARY) && \
curl -o $DEPNAME.zip -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GITHUB_TOKEN" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/$GITREPO/actions/artifacts/$ARTIFACT_ID/zip &&\
unzip $DEPNAME.zip && rm $DEPNAME.zip &&\
tar -xvf "$DEPNAME".tar.gz && rm "$DEPNAME".tar.gz )
