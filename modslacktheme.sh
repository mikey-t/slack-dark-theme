#!/usr/bin/env bash

SLACK_CSS_FILE="https://raw.githubusercontent.com/mikey-t/slack-dark-theme/master/slack-dark.css"

JS="
//START_SLACK_DARK_MOD
// First make sure the wrapper app is loaded
document.addEventListener('DOMContentLoaded', function() {
  // Fetch our CSS in parallel ahead of time
  const cssPath = '${SLACK_CSS_FILE}';
  let cssPromise = fetch(cssPath).then((response) => response.text());
  // Insert a style tag into the wrapper view
  cssPromise.then((css) => {
    let s = document.createElement('style');
    s.type = 'text/css';
    s.innerHTML = css;
    document.head.appendChild(s);
  });
});
//END_SLACK_DARK_MOD"

SLACK_RESOURCES_DIR="/Applications/Slack.app/Contents/Resources"
SLACK_FILE_PATH="${SLACK_RESOURCES_DIR}/app.asar.unpacked/dist/ssb-interop.bundle.js"

echo "Hacking Slack..."

sudo npx asar extract ${SLACK_RESOURCES_DIR}/app.asar ${SLACK_RESOURCES_DIR}/app.asar.unpacked
sudo sed -i '' '/\/\/START_SLACK_DARK_MOD/,/\/\/END_SLACK_DARK_MOD/d' ${SLACK_FILE_PATH}
sudo tee -a "${SLACK_FILE_PATH}" > /dev/null <<< "$JS"
sudo npx asar pack ${SLACK_RESOURCES_DIR}/app.asar.unpacked ${SLACK_RESOURCES_DIR}/app.asar
