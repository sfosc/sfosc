#!/usr/bin/env bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Make sure we're in the project root.
toplevel="$(git -C "$(dirname "$0")" rev-parse --show-toplevel)"
cd "${toplevel}"

# Force checkout the remote public master branch (detached).
git submodule update --init --remote --checkout public || exit 1

# Build the project with docker into the submodule.
docker run --rm \
	-v $(pwd):/src \
	-v $(pwd)/public:/target \
	--user $(id -u):$(id -g) \
	klakegg/hugo:0.55.6 \
	--config config.toml

# Go To Public folder
cd public

# Add changes to git.
git add .

# Commit changes.
msg="manually rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin HEAD:master
