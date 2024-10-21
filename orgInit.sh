sf demoutil org create scratch -f config/project-scratch-def.json -d 30 -s -p dream -e house.demo

npm install
node run.js
sleep 120

sf org assign permset -n EinsteinGPTPromptTemplateManager

sf project deploy start
sf org assign permset -n dreamhouse
sf org assign permset -n Walkthroughs

sf data import tree -p data/sample-data-plan.json

sf demoutil user password set -p salesforce1 -g User -l User

sf org open