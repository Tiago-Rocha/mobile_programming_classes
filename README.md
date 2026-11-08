# 📱 Mobile Programming Classes

This repository contains the code developed during the **Mobile Programming** course (CTeSP: University of the Azores).  
Each folder corresponds to one class, with incremental examples that build a complete **TodoApp** project.

---

## 📚 Contents

- `class3/`: Stateless vs Stateful Widgets, Dart Primitives, ToDoApp 
- `class4/`: TodoApp Stateful Widget - complete task and UI update
- `class5/`: Review of Classes, Dart Primitives & Widges. Introduction to Dependency Injection
- `class6/`: Adding External Libraries via pub.dev. Storing data locally via shared preferences. Different database engines  
- `class7/`: TodoApp with the repository pattern
- `class14/code_smells_exercise/`: Code smells exercise, a separate Flutter project with its own README
- `dart_basics/`: Small Dart examples: primitives, enums and function parameters
- `bin/`: Dart examples used to go over the test questions
---

## 🚀 How to Run the Examples

1. Install [Flutter](https://docs.flutter.dev/get-started/install).
2. Clone this repository and get the packages:
   ```bash
   git clone https://github.com/Tiago-Rocha/mobile_programming_classes.git
   cd mobile_programming_classes
   flutter pub get
   ```
3. Run the app of one class, for example:
   ```bash
   flutter run -d chrome -t lib/class6/main.dart
   ```
   The plain Dart examples run with `dart run lib/dart_basics/functions.dart`.

## Context

Written by Tiago Rocha while teaching the Mobile Programming course of the CTeSP at the University of the Azores in the autumn of 2025 (first commit on 16/09/2025, last class code in December 2025). Some students contributed through pull requests, mostly refactorings from the code smells exercise.

## Status

Archived: that edition of the course is over. The 2026/27 edition (PDM) uses the `pdm-aulas` site and the `pdm-aula-NN` repositories instead.
