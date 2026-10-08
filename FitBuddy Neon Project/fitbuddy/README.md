Fit Buddy demo link video : https://drive.google.com/file/d/1vR-vfoEB1C06mgwt8ixQdcbOTcMPCPIR/view?usp=sharing
# FitBuddy (Neon edition)

FastAPI + Gemini workout planner with SQLite storage and a dark neon design.

## Quick start (Windows)
Double-click `run.bat`, or in a terminal:

    python -m venv venv
    venv\Scripts\activate
    pip install -r requirements.txt
    copy .env.example .env      (then paste your key into .env)
    uvicorn app.main:app --reload

## Quick start (Mac / Linux)
    ./run.sh

Open http://127.0.0.1:8000 (API docs at /docs, admin at /view-all-users).
Get a key at https://aistudio.google.com/apikey

If a model name is rejected, change PLAN_MODEL / TIP_MODEL in .env.

## Design
Colours and glow live in `app/static/css/base.css` (the `:root` variables at the top).
Strength = cyan, cardio = pink, mobility = amber, rest = green.
