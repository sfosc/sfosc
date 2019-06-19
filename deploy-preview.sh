#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project with docker in a sibling repository.
docker run --rm \
	-v $(pwd):/src \
	-v $(pwd)/../preview:/target \
	--user $(id -u):$(id -g) \
	klakegg/hugo:0.55.6 \
	--config config.preview.toml

# Go To Preview folder
cd ../preview
# Add changes to git.
git add .

# Commit changes.
msg="manually rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back up to the Project Root
cd ../sfosc
