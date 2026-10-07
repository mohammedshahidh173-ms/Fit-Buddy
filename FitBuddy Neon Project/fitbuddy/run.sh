#!/usr/bin/env bash
cd "$(dirname "$0")"
[ -d venv ] || python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
if [ ! -f .env ]; then
  cp .env.example .env
  echo "Open .env, paste your GOOGLE_API_KEY, save it, then run ./run.sh again."
  exit 0
fi
uvicorn app.main:app --reload
