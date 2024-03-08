#!/bin/bash
# playerctl --follow metadata --format {{mpris:artUrl}} | grep -oP /tmp.+$
playerctl metadata --format {{mpris:artUrl}} | grep -oP /tmp.+$
