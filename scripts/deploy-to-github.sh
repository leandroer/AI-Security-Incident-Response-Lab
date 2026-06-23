#!/usr/bin/env bash
set -euo pipefail
REPO_URL="${1:-https://github.com/leandroer/AI-Security-Incident-Response-Lab.git}"
git init
git config user.name "${GIT_AUTHOR_NAME:-Leandro Rocha}"
git config user.email "${GIT_AUTHOR_EMAIL:-your-email@example.com}"
git branch -M main
if ! git remote | grep -q '^origin$'; then
  git remote add origin "$REPO_URL"
fi
git add .
git commit -m "Add AI Security Incident Response Lab v1.1" || true
git push -u origin main
