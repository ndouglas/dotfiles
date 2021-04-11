#!/usr/bin/env bash

# Automatically trim long paths in the prompt (requires Bash 4.x)
export PROMPT_DIRTRIM=2;

# This defines where cd looks for targets
# Add the directories you want to have fast access to, separated by colon
# Ex: CDPATH=".:~:~/projects" will look for targets in the current working directory, in home and in the ~/projects folder
export CDPATH=".:~";
