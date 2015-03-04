cd /built_app

if [[ $REBULD_NPM_MODULES ]]; then
  cd programs/server
  bash /opt/meteord/rebuild_npm_modules.sh
  cd ../../
fi

export PORT=3000
echo "!!Now starting meteor app on port:$PORT"
node main.js
