#!/bin/bash

SLACK_FILE=/Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/index.js
ALT_SLACK_FILE=/Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/ssb-interop.js

mv ${ALT_SLACK_FILE}.bu ${ALT_SLACK_FILE}
mv ${SLACK_FILE}.bu ${SLACK_FILE}
