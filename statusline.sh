#!/usr/bin/env bash
cat | powershell.exe -NoProfile -NonInteractive -File "$USERPROFILE/.claude/statusline.ps1"
