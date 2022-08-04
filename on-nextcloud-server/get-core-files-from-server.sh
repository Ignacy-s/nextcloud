#!/bin/bash

# TODO: Replace this script with git hooks.
# Script downloading conf files from server so they can be put into
# the git repo.
# It also removes the password hash from one of conf files and copies
# it into the file that is versioned (but leaving the unversioned
# original in the proper dir in case we want to re-deploy server
# somewhere else).

# Make sure we are in the right place to avoid deleting files.
RIGHT_PWD="/home/igi/Coding/projekty/nextcloud/on-nextcloud-server"
if [[ $(pwd) != "${RIGHT_PWD}" ]]
then
  echo "Use this in ${RIGHT_PWD}." >&2
  exit 1
fi

# Copy files from server into current dir. Can break if not used in
# the home dir of on-nextcloud-server.
rsync -azvh valheim-serv:/home/nextcloud/core/docker-compose.yml \
valheim-serv:/home/nextcloud/core/traefik-data/traefik.yml \
valheim-serv:/home/nextcloud/core/traefik-data/configurations/dynamic-password-hash.yml \
  .

# Move files
echo "Moving 'docker-compose.yml'."
mv docker-compose.yml core/
echo "Moving 'traefik.yml'."
mv traefik.yml core/traefik-data/
echo "Moving 'dynamic-password-hash.yml'."
mv dynamic-password-hash.yml core/traefik-data/configurations/


echo "Making a hash-less copy of 'dynamic.yml'."
# Using the fact that my username is igi. Replace with your own
# username, might have to modify it if you have multiple usernames here.
sed \
  '/igi:\$/s/^.*$/# Here belongs a username : password hash pair./' \
  core/traefik-data/configurations/dynamic-password-hash.yml \
  > core/traefik-data/configurations/dynamic.yml

