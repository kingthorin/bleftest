#!/bin/bash

for d in ../../scans/auth/plans_and_scripts/**/; do
  echo $d
  if [[ -f "$d/vars.env" ]];
  then
    cat "$d"/vars.env | tee -a ../../scans/auth/all_vars.env > /dev/null
  fi
  wc -l ../../scans/auth/all_vars.env
done
wc -l ../../scans/auth/all_vars.env

echo $ALL_VARS | tee -a ../../scans/auth/all_vars.env > /dev/null

wc -l ../../scans/auth/all_vars.env
