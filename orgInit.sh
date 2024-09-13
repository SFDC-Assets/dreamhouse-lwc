sfdx force:org:create -f config/project-scratch-def.json -d 30 -s --wait 60

npm install
node run.js
sleep 120

sfdx force:source:push
sfdx force:user:permset:assign -n dreamhouse
sfdx force:user:permset:assign -n Walkthroughs
sfdx force:data:tree:import -p data/sample-data-plan.json

sfdx force:org:open -p /lightning/n/Property_Explorer
