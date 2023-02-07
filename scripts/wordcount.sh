#!/usr/bin/env zsh

pandoc --lua-filter wordcount.lua $1
