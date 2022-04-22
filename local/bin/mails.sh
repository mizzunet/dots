#!/usr/bin/env bash

printf -- '%s\n' "count|string|󰗰"
printf -- '%s\n' ""

while true; do
  count=$(waybar_unread)
  interval="20"

  printf -- '%s\n' "count|string|${count}"
  printf -- '%s\n' ""

  sleep "${interval}"
done
