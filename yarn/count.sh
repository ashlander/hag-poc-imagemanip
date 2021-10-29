#!/bin/sh

find . -name '*.yarn.txt' | sed 's/.*/"&"/' | xargs  wc -l
