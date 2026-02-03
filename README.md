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

# Using TaskFlow Web App

TaskFlow is a web-based, multi-user todo application built with **Jac / Jaseci**, enhanced with **AI-powered features**. This document explains how to use the TaskFlow web interface and what each feature does.

---

## Accessing the App

1. Start the application:
   ```bash
   jac start main.jac
   ```
2. Open your browser and go to:
   ```
   http://localhost:8000
   ```

---

## Authentication

### Sign Up
- Enter a **username** and **password**
- Click **Sign Up**
- After successful registration, you will be logged in automatically

### Sign In
- Enter your existing credentials
- Click **Sign In**

### Sign Out
- Click the **Sign Out** button in the top-right corner

---

## Todo List Features

### Add a Todo
- Type a task description in the input field
- Press **Enter** or click **Add**

Each todo is automatically:
- Assigned a unique ID
- Categorized using AI (WORK, PERSONAL, SHOPPING, HEALTH, OTHER)

---

### View Todos
- All todos are displayed in a list
- Each item shows:
  - Task title
  - Completion status
  - Category badge (if not `OTHER`)

---

### Complete / Uncomplete a Todo
- Click the **checkbox** next to a todo
- The task will toggle between completed and uncompleted states

---

### Delete a Todo
- Click the **×** button next to a todo
- The todo is permanently removed

---

### Remaining Task Counter
- Displays how many tasks are still incomplete

---

## AI Task Decomposition

TaskFlow supports AI-assisted task breakdown.

### What It Does
- Takes a complex task
- Uses an LLM to generate **3–5 smaller, actionable sub-tasks**
- Automatically adds them as new todos

### Example
Original todo:
```
Prepare for final exams
```

Generated subtasks:
```
- Review lecture notes
- Create study schedule
- Practice past exams
- Identify weak topics
```

Each generated sub-task:
- Is stored as a normal todo
- Is auto-categorized using AI

---

## Meal Planner Feature

### Generate a Shopping List
1. Enter a meal description (e.g. `spaghetti bolognese for 4`)
2. Click **Generate**

The AI will return a list of ingredients with:
- Name
- Quantity
- Unit
- Estimated cost
- Carbohydrate indicator

---

### View Ingredients
- Ingredients are displayed as a list
- Each item shows:
  - Ingredient name
  - Quantity and unit
  - Estimated price
  - “Carbs” badge if high in carbohydrates

---

### Total Cost
- Displays the total estimated cost of the generated shopping list

---

### Clear Shopping List
- Click **Clear**
- Removes all generated ingredients

---

## Notes

- AI-powered features (categorization, decomposition, meal planning) require a valid LLM API key
- Slow responses usually indicate missing or misconfigured API credentials
- The app is designed for **local development and coursework use**

---

## Summary of Features

- User authentication (sign up / sign in)
- AI auto-categorized todos
- Task completion tracking
- AI task decomposition
- AI meal planning and shopping list generation
- Real-time UI updates via Jac frontend

---

Enjoy using **TaskFlow** 🚀
