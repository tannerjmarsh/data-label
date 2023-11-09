#!/bin/bash
# configure_label_studio.sh

# Configuration commands
echo "Configuring label studio..."

pipenv run python conf.py

# Return control to user
exec pipenv shell