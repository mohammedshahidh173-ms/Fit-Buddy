@echo off
cd /d "%~dp0"
if not exist venv python -m venv venv
call venv\Scripts\activate
pip install -r requirements.txt
if not exist .env (
  copy .env.example .env
  echo.
  echo Open .env, paste your GOOGLE_API_KEY, save it, then run run.bat again.
  notepad .env
  pause
  exit /b
)
start http://127.0.0.1:8000
uvicorn app.main:app --reload
