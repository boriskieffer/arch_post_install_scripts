#!/bin/bash

# install sqlite3 if not installed
test -z "$(pacman -Q | grep "^sqlite 3.*")" && pacman --noconfirm -Sy sqlite3

# add my search engines && set Startpage as default search engine
sqlite3 ~/.config/chromium/Default/Web\ Data ".read chromium/search_engines.sql"
mkdir -p ~/.config/chromium/Default && cp ./chromium/Preferences ~/.config/chromium/Default/Preferences

