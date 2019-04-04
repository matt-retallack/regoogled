#!/bin/bash
echo 'Your Inject Account ID:'
echo \(this won\'t be used for anything except to configure this app\):
read account
echo 'Configuring your account details...'
sed -i "s/ACCOUNT/${account}/g" app.js
echo 'Done.'
echo 'Deploying the app...'
export PORT=8080 && npm install
gcloud app deploy
echo 'All Done!'
