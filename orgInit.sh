sfdx shane:org:create -f config/project-scratch-def.json -d 30 -s --wait 60 --userprefix data -o cloud.workshop
sfdx force:source:push
sfdx shane:user:password:set -p salesforce1 -g User -l User
sfdx force:org:open

