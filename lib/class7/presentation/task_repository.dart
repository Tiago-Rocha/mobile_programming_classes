import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/class7/presentation/task.dart';

/// ---------------------
/// Task Repository (persistência)
/// ---------------------
class TaskRepository {
  static const _key = 'tasks';

  Future<List<Task>> loadTasks() async {
    final prefs = await SharedPreferences.getInstance();
    final taskStrings = prefs.getStringList(_key) ?? [];
    return taskStrings.map((str) => Task.fromMap(jsonDecode(str))).toList();
  }

  Future<bool> save(Task task) async {
    final prefs = await SharedPreferences.getInstance();
    final taskStrings = prefs.getStringList(_key) ?? [];
    taskStrings.add(jsonEncode(task.toMap()));
    return await prefs.setStringList(_key, taskStrings);
  }

  Future<Task> fetch(String taskID) async {
    final tasks = await loadTasks();
    return tasks.firstWhere((task) => task.id == taskID);
  }

  Future<bool> delete(String taskID) async {
    final prefs = await SharedPreferences.getInstance();
    final taskStrings = prefs.getStringList(_key) ?? [];
    final tasks = taskStrings
        .map((str) => Task.fromMap(jsonDecode(str)))
        .toList();

    tasks.removeWhere((task) => task.id == taskID);
    final updatedTaskStrings = tasks
        .map((task) => jsonEncode(task.toMap()))
        .toList();

    return await prefs.setStringList(_key, updatedTaskStrings);
  }
}
