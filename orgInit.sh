sfdx shane:org:create -f config/project-scratch-def.json -d 30 -s --wait 60 --userprefix dream -o house.demo

npm install
node run.js
sleep 120

sfdx force:source:push

sf project deploy start -d force-app/main/default/genAiPromptTemplates/
sfdx force:user:permset:assign -n dreamhouse
sfdx force:user:permset:assign -n Walkthroughs

sfdx force:user:permset:assign -n EinsteinGPTPromptTemplateManager
sfdx force:user:permset:assign -n EinsteinGPTPromptTemplateUser

sfdx force:data:tree:import -p data/sample-data-plan.json

sfdx shane:user:password:set -p salesforce1 -g User -l User
sfdx force:org:open
