#!/bin/sh

if [ -z "$ACTION_MAIL" ]; then
  echo "ACTION_MAIL ENV are missing"
  exit 1
fi

if [ -z "$ACTION_NAME" ]; then
  echo "ACTION_NAME ENV are missing"
  exit 1
fi

if [ -z "$ACTION_BRANCH" ]; then
  echo "ACTION_BRANCH ENV are missing, assuming master"
  ACTION_BRANCH='master'
fi

if [ -z "$ACTION_MESSAGE" ]; then
  echo "ACTION_MESSAGE ENV are missing, using 'Automated commit'"
  ACTION_MESSAGE='Automated commit'
fi

git config --global user.email "$ACTION_MAIL"
git config --global user.name "$ACTION_NAME"

cd /github/workspace || exit 1
git add .
git commit -m "$ACTION_MESSAGE"
git push --set-upstream origin "$ACTION_BRANCH"
