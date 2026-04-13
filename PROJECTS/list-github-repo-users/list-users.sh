#!/bin/bash

####################################
# Description: list the Repository users
# Author: Vleena
# Version: V1

########################################

API_URL="https://api.github.com"

USERNAME="$username"
TOKEN="$token"

REPO_OWNER="$1"
REPO_NAME="$2"

function github_get_api {
	local endpoint="$1"
	curl -s -u "${USERNAME}:${TOKEN}" "${API_URL}/${endpoint}"
}

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

function admin_user_list {
	local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"
	admin_response="$(github_get_api "$endpoint" | jq -r '.[] | select(.permissions.admin == true) | .login')"
	echo "$admin_response"
}


list_user_with_read_access
echo "users with Admin access to ${REPO_OWNER}/${REPO_NAME}:"
admin_user_list
