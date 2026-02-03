# TaskFlow (Jac + Jaseci)

TaskFlow is a multi-user todo app with AI-assisted features:
- Auto-categorize todos (WORK / PERSONAL / SHOPPING / HEALTH / OTHER)
- Decompose a complex task into 3–5 sub-tasks
- Meal planner: generate a shopping list from a meal description

---

## Tech Stack
- **Jac / Jaseci runtime**
- **Frontend:** Jac JSX client (`frontend` module)
- **LLM:** `byllm.lib.Model` (configured to use Claude)

---

## Features

### Todo
- Add todo (AI categorization)
- List todos
- Toggle complete / incomplete
- Delete todo
- Decompose a todo into sub-tasks (AI)

### Meal Planner
- Generate shopping list from a meal description (AI ingredients)
- View current meal-plan ingredient list
- Clear meal plan

---

## Project Structure
Typical layout (your repo may have additional files):

- `main.jac` — backend logic (nodes + walkers) and client entry
- `frontend/` — UI client module (Jac JSX)
- `styles.css` — UI styling
- `.jac/` — Jac build/cache artifacts (**generated; do not commit**)
- `.venv/` or `jac*_env/` — local Python environment (**do not commit**)

---

## Prerequisites
- **Python 3.12+** recommended
- **Jac / Jaseci CLI** installed (per course setup)
- **Anthropic API key** (required for AI features)

---

## Setup

### 1) Create and activate a Python venv (inside this project folder)
```bash
python3 -m venv .venv
source .venv/bin/activate
```

### 2) Install dependencies
If your project includes `requirements.txt`:
```bash
pip install -r requirements.txt
```

Otherwise, install the core deps (adjust if your course provides a different command):
```bash
pip install jaclang jaseci byllm
```

### 3) Configure the LLM API key (Claude)
Export the key in the **same terminal** where you run `jac start`:
```bash
export ANTHROPIC_API_KEY="YOUR_KEY_HERE"
```

(Optional) Verify it is set:
```bash
echo $ANTHROPIC_API_KEY
```

### 4) Build/check and run
```bash
jac clean
jac check main.jac
jac start main.jac
```

### 5) Open in browser
- http://localhost:8000/

---

## Common Commands
```bash
jac check main.jac      # syntax/type check
jac clean               # remove Jac build/cache artifacts (.jac/)
jac start main.jac      # start server (default: http://localhost:8000)
```

---

## Troubleshooting

### 1) UI stuck on “Generating…” for 30+ seconds
Most common causes:
- API key not exported in the terminal that launched the server
- Invalid/expired key
- Rate limit / network issue

Fix:
1) Stop the server (Ctrl+C)
2) Export the key again:
```bash
export ANTHROPIC_API_KEY="YOUR_KEY_HERE"
```
3) Start again:
```bash
jac start main.jac
```

### 2) `curl http://localhost:8000/` returns nothing
Try checking if the server is running and listening:
- Make sure `jac start main.jac` is running in a terminal.
- If you changed ports, open the correct URL.

### 3) GitHub push rejected (large files detected)
You accidentally committed a Python environment or build artifacts (e.g., `jac*_env/`, `.venv/`, `.jac/`). GitHub rejects files > 100 MB.

Fix (recommended):
1) Add ignores (see `.gitignore` below)
2) Remove tracked env/build files from git index:
```bash
git rm -r --cached .venv .jac jac*_env
git commit -m "Remove env/build artifacts from repo"
```
3) Push again:
```bash
git push
```

If the large files are already in history, you must rewrite history (course/TA permitting):
- Use `git filter-repo` or `BFG Repo-Cleaner` on a **fresh clone**.

---

## Recommended `.gitignore`
Create a `.gitignore` at the repo root (or merge into your existing one):

```gitignore
# Jac build/cache
.jac/

# Python virtual environments
.venv/
venv/
jac*_env/

# Python cache
__pycache__/
*.pyc

# Node (if used)
node_modules/

# OS files
.DS_Store
```
