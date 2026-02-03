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
