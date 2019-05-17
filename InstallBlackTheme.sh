#!/bin/bash

SLACK_FILE=/Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/index.js
ALT_SLACK_FILE=/Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/ssb-interop.js

# Text you have to add into the slack app
head -n 80 readme.md | tail -n 54 > css_append.js

cat ${SLACK_FILE} css_append.js > index.js
cat ${ALT_SLACK_FILE} css_append.js > ssb-interop.js

# Back up the original files
mv ${SLACK_FILE} ${SLACK_FILE}.bu
mv ${ALT_SLACK_FILE} ${ALT_SLACK_FILE}.bu

# Overwrite with the dark theme
mv index.js ${SLACK_FILE}
mv ssb-interop.js ${ALT_SLACK_FILE}
