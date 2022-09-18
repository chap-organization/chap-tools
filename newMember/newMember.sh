#!/bin/bash
mcgillEmail='nabil.amimer@mail.mcgill.ca'
#create your private access token here : https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token
access_token_git="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"

#atlassian api token : https://support.atlassian.com/atlassian-account/docs/manage-api-tokens-for-your-atlassian-account/
access_token_atlassian='oWNBqD3BL0plPXQ01mkAAE20'
organization_id_atlassian='d85e9744-7cea-4978-9064-a7917a97b25d'

email=''
gitUserName=''
role=''

# adding members to the git organization
while getopts 'adding:e:u:r:' OPTION; do
    case "${OPTION}" in
        e) email="$OPTARG" ;;
        u) gitUserName="$OPTARG" ;;
        r) 
            if [ $OPTARG != 'admin' -a $OPTARG != 'direct_member' ]
            then
                echo "$OPTARG : role provided does not match any available ones (admin, direct_member)"
                echo "exited with code 1"
                exit 1
            fi
            role="$OPTARG" ;;
    esac
done

# ################################################################
# # ADDING MEMBER TO GIT HUB ORGANIZATION
# ################################################################
echo "ADDING MEMBER TO GIT HUB ORGANIZATION...."

# getting info from user. 
echo "Information for user : $gitUserName with email : $email"
curl\
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer $access_token_git" \
    "https://api.github.com/users/$gitUserName"

# registering member to organization
curl \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $access_token_git" \
  https://api.github.com/orgs/chap-organization/invitations \
  -d '{"email":"'$email'","role":"'$role'"}'


################################################################
# ADDING MEMBER TO ATLASSIAN CHANNEL
################################################################
curl --request POST \
  --url 'https://chap-club.atlassian.net/rest/api/3/user' \
  --user ${mcgillEmail}':'${access_token_atlassian} \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --data '{
  "emailAddress": "'$email'"
}'


