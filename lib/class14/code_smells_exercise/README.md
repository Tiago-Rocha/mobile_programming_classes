# 🧠 Code Smells Exercise — Task Tracker

This small Dart/Flutter project contains **intentional bad code** (code smells).  
Your goal is to **identify and fix** them using **best practices**.

---

## 🎯 Objectives

- Identify code smells (long functions, magic numbers, etc.)
- Refactor code to improve readability and maintainability
- Write clear **Conventional Commit messages**
- Open **Pull Requests** describing what and why you changed

---

## 🪛 Instructions

1. **Fork** this repository.
2. **Create a new branch** for each smell:
   ```bash
   git checkout -b refactor/task-service
   ```
3. **Fix one smell at a time**, committing with:
   ```bash
   git commit -m "refactor(task): remove duplicated addAnotherTask()"
   ```
4. **Open a Pull Request** with:
   - What was wrong
   - Why your fix improves it
   - What you learned

---

## 💡 Hints

Look for:
- Repeated logic
- Mixed responsibilities
- Poor naming
- Hardcoded dependencies
- Magic numbers
- Missing abstractions
- UI logic doing business work

---

## 🧩 Extra Challenge

- Introduce interfaces for Logger or TaskService
- Move user validation into its own class
- Add a test file to check that tasks are stored correctly
