#!/usr/bin/env bash

# Starts all escape sequences.
ANSI_ESC=$'\033';

# Control Sequence Introducer.
ANSI_CSI="${ANSI_ESC}[";

# Operating System Command.
ANSI_OSC="${ANSI_ESC}]";

# String Terminator.
ANSI_ST="${ANSI_ESC}\\";
