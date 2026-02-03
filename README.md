# TaskFlow (Jac + Jaseci)

TaskFlow is a multi-user todo app with AI-assisted features:
- Auto-categorize todos (WORK / PERSONAL / SHOPPING / HEALTH / OTHER)
- Decompose a complex task into 3–5 sub-tasks
- Meal planner: generate a shopping list from a meal description

## Tech Stack
- Jac / Jaseci runtime
- Frontend: Jac JSX client (`frontend` module)
- LLM: `byllm.lib.Model` (configured to use Claude)

## Setup

### 1) Create and activate a Python environment
Recommended: create a venv OUTSIDE the repo folder.

```bash
python3 -m venv .venv
source .venv/bin/activate
