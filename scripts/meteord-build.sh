#!/bin/bash
curl https://install.meteor.com | /bin/sh
npm install --silent -g demeteorized
cd /app

# meteor build --directory /tmp/the-app
demeteorizer --output /tmp/the-app


# cd /tmp/the-app/bundle/programs/server/
# npm i
cd /tmp/the-app
npm i

# mv /tmp/the-app/bundle /built_app
mv /tmp/the-app /built_app

# cleanup
rm -rf /tmp/the-app
rm -rf ~/.meteor
rm /usr/local/bin/meteor
