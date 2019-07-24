#!/bin/bash
scp $1 root@192.168.102.198:/usr/src/redhat/SOURCES/zixganglia-plugins/usr/lib/zixganglia/plugins/
ssh root@192.168.102.198 'cd /usr/src/redhat/SPECS/; /usr/src/redhat/SPECS/buildplugins; /usr/src/redhat/SCRIPTS/syncup'
#osascript -e 'tell application "Mail"' -e "set theMessage to make new outgoing message with properties {subject:\"Monitor $1 is ready for test\", content:\"Tony, as subject, $1 is ready for test and synced up.\", visible:true}" -e 'tell theMessage' -e ' make new to recipient with properties {name:"Tony Bush", address:"tbush@zixcorp.com"}' -e 'send' -e 'end tell' -e 'end tell'
