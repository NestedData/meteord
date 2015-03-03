#!/bin/bash
curl https://install.meteor.com | /bin/sh
npm install --silent -g demeteorized
cd /app

demeteorized --output /tmp/the-app

cd /tmp/the-app
npm i

mv /tmp/the-app/bundle /built_app

# cleanup
rm -rf /tmp/the-app
rm -rf ~/.meteor
rm /usr/local/bin/meteor
