#!/bin/bash

# @see https://github.com/GoogleChrome/puppeteer/issues/367#issuecomment-499315095 in regards of unsafe-perm
# fork is used instead of official glyphhanger because it's not possible to pass config to puppeteer instance
npm install -g Worie/glyphhanger#no-sandbox --unsafe-perm=true