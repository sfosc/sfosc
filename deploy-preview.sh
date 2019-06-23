#!/usr/bin/env bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Check our dependencies.
if [ -z "$(which hugo)" ]; then
	echo "Hugo must be installed and available in \$PATH"
	exit 1
fi
if [ -z "$(which git)" ]; then
	echo "Git must be installed and available in \$PATH"
	exit 1
fi

# Make sure we're in the project root.
# Note: this $0 only works if we call the script, so skip it for now.
# toplevel="$(git -C "$(dirname "$0")" rev-parse --show-toplevel)"
toplevel="$(git rev-parse --show-toplevel)"
cd "${toplevel}"

# Check we're not in a dirty state.
dirty_files=$(git status --porcelain --ignore-submodules 2> /dev/null)
if [ -z "$FORCE_UPDATE" ] && [ ! -z "dirty_files" ]; then
  echo "Looks like you have uncommitted changes, aborting."
  echo "$dirty_files"
  exit 1
fi

# Force checkout the remote preview master branch (detached).
git submodule update --init --remote --checkout preview || exit 1

# Find source and target commit hash.
SOURCE_SHA="$(git rev-parse --verify HEAD)"
TARGET_SHA="$(cat preview/.HEAD)"
echo "Source SHA = $SOURCE_SHA"
echo "Target SHA = $TARGET_SHA"

# When the target has a SHA reference, and they're the same, skip.
if [ -z "$FORCE_UPDATE" ] && [ ! -z "$TARGET_SHA" ] && [ "$SOURCE_SHA" == "$TARGET_SHA" ]; then
  echo "Source and last built commit are the same. No need to update."
else
  # Build the project into the submodule.
  hugo -s . -d ./preview --config config.preview.toml

  # Track the SHA we've built from.
  echo "$(git rev-parse --verify HEAD)" > preview/.HEAD

  # Go To Preview folder
  cd ./preview

  # Push preview repo from the detached head.
  git add --all
  git commit -m "Rebuilding site `date`"
  git push --dry-run origin HEAD:master
fi
