sfdx shane:org:create -f config/project-scratch-def.json -d 30 -s --wait 60 --userprefix dream -o house.demo
sfdx shane:user:password:set -p salesforce1 -g User -l User
sfdx force:source:push
sfdx force:user:permset:assign -n dreamhouse
sfdx force:user:permset:assign -n Walkthroughs
sfdx force:data:tree:import -p data/sample-data-plan.json
sfdx force:source:open
