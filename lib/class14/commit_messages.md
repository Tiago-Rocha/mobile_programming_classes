# 🧾 Git Commit Messages

A well-written commit message helps everyone understand **what** changed and **why**.  
Follow a consistent format so history stays readable and easy to search.

---

## 📐 Conventional Commits

The standard format:

```
<type>(scope): short summary
```

### Common types
| Type | Meaning |
|------|----------|
| feat | New feature |
| fix | Bug fix |
| refactor | Code restructuring without new feature or fix |
| docs | Documentation only |
| style | Code style or formatting (no logic change) |
| test | Adding or updating tests |
| chore | Maintenance tasks (build, deps, CI) |

---

## ✅ Good Examples

```bash
feat(auth): add Google sign-in flow
fix(tasks): correct logic for completed tasks
refactor(storage): move preferences handling to repository
docs(readme): explain Firebase setup
style(ui): align button on login screen
test(api): add unit tests for task creation
```

### 🧩 With issue references
```bash
fix(profile): crash when editing avatar (#123)
```

---

## ❌ Bad Examples

```bash
update stuff
final version
fix
some changes
trying again
```

> ❗️These give no context — nobody knows what actually changed.

---

## 💡 Writing Great Commit Messages

- Use **imperative mood**: “add”, “fix”, “update” (not “added”, “fixed”).  
- Keep the **first line ≤ 72 characters**.  
- Explain **why** when not obvious.  
- Group related changes into a **single commit**.  
- Avoid committing generated files or unrelated changes.  

---

## 🧠 Example Workflow

```bash
git add .
git commit -m "feat(tasks): allow editing task titles"
git push origin main
```

---

## 📚 References
- [Conventional Commits](https://www.conventionalcommits.org)
- [How to Write a Git Commit Message](https://cbea.ms/git-commit/)
- [Keep a Changelog](https://keepachangelog.com/en/1.1.0/)
