sfdx shane:org:create -f config/project-scratch-def.json -d 30 -s --wait 60 --userprefix dream -o house.demo
#sfdx force:org:create -f config/project-scratch-def.json -d 30 -s --wait 60
sfdx force:source:push
sf org assign permset -n dreamhouse
sf org assign permset -n Walkthroughs
sf data tree import -p data/sample-data-plan.json
sfdx force:source:open