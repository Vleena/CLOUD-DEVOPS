#!/bin/bash

####################################
# Description: list the Repository users
# Author: Vleena
# Version: V2

########################################

# Base URL
API_URL="https://api.github.com"

# set the environment variables
USERNAME="$username"
TOKEN="$token"

# set it on the command line arguments
REPO_OWNER="$1"
REPO_NAME="$2"

function get_help {
  echo "script usuage: $0 REPO_OWNER REPO_NAME"
  exit 1 
}

if [[ -z "$REPO_OWNER" || -z "$REPO_NAME" ]]; then
	get_help
fi

# it will form the get api URL with user authentication
function github_get_api {
	local endpoint="$1"
	curl -s -u "${USERNAME}:${TOKEN}" "${API_URL}/${endpoint}"
}

# get the api and then filter it with only read access without the admin access
function list_user_with_read_access {
	local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"
	response="$(github_get_api "$endpoint" | jq -r '.[] | select(.permissions.admin == false) | .login')"

	if [[ -z "$response" ]];
	then
		echo "No users in ${REPO_OWNER}/${REPO_NAME} available with read only access"
	else
		echo "users with read access to ${REPO_OWNER}/${REPO_NAME}:"
		echo "$response"
	fi
}


# fetch the admin users
function admin_user_list {
	local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"
	admin_response="$(github_get_api "$endpoint" | jq -r '.[] | select(.permissions.admin == true) | .login')"
	echo "$admin_response"
}

# calling the functions
list_user_with_read_access
echo "users with Admin access to ${REPO_OWNER}/${REPO_NAME}:"
admin_user_list
