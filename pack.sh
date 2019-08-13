#!/bin/bash
SLACK_RESOURCES_DIR="/Applications/Slack.app/Contents/Resources"
LINUX_SLACK_RESOURCES_DIR="/usr/lib/slack/resources"
if [[ -d $LINUX_SLACK_RESOURCES_DIR ]]; then SLACK_RESOURCES_DIR=$LINUX_SLACK_RESOURCES_DIR; fi
sudo npx asar pack ${SLACK_RESOURCES_DIR}/app.asar.unpacked ${SLACK_RESOURCES_DIR}/app.asar