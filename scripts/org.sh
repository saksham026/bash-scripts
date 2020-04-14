#!/bin/bash
for x in *.png; do
  d=$(date -r "$x" +%Y-%m)
  mkdir -p "$d"
  mv -- "$x" "$d"
done