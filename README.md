# slack-dark-theme for Mac for Slack 4
Instructions and resources for modding Slack 4 with a dark theme. Working as of 8/2019.

# Pre-requisites:
- Slack 4
- node/npm
- npm package asar installed globally (npm i -g asar)

# Installation
- Clone or download this repository
- Run `hack-slack.sh` in a terminal (requires sudo privileges)

# Make CSS Changes (or Create Your Own Theme)
- In downloaded repository, edit `slack-dark.css` and re-run `hack-slack.sh` in a terminal and then reload slack

# CSS Current State
The CSS currently checked in is from an older version 3 of Slack, so some functionality is missing dark CSS rules. I'll add these when I have time. Feel free to submit a PR if you have CSS fixes you want to share.

# How to Undo this change
- Edit the file `/Applications/Slack.app/Contents/Resources/app.asar.unpacked/dist/ssb-interop.bundle.js` (requires sudo) and remove everything between `START_SLACK_DARK_MOD` and `END_SLACK_DARK_MOD`
- Run `pack.sh`
- Reload Slack

# Credit
This was pieced together from:
- https://gist.github.com/DrewML/0acd2e389492e7d9d6be63386d75dd99
- https://github.com/caiceA/slack-black-theme

