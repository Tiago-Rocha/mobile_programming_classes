import 'package:flutter/foundation.dart';
import 'package:todo_app/class7/presentation/task.dart';
import 'package:todo_app/class7/presentation/task_repository.dart';

class TaskManager extends ChangeNotifier {
  final TaskRepository repository;
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  TaskManager({required this.repository}) {
    _loadTasks();
  }

  Future<void> _loadTasks() async {
    _tasks = await repository.loadTasks();
    notifyListeners();
  }

  Future<void> addTask(Task task) async {
    await repository.save(task);
    await _loadTasks();
  }

  // Leave these for students to implement
  Future<void> markDone(String taskId) async {
    // TODO
    // 1. Get task from repository
    // 2. Update isDone
    // 3. Save task
    // 4. Reload tasks
    // 5. Notify listeners
    /*
    Task fetchedTask = await repository.fetch(taskId);
    await deleteTask(fetchedTask.id);
    Task doneTask = Task(
      id: fetchedTask.id,
      title: fetchedTask.title,
      isDone: !fetchedTask.isDone,
    );
    await repository.save(doneTask);
    await _loadTasks();
    notifyListeners();
    */
  }

  Future<void> deleteTask(String taskId) async {
    // TODO
    // 1. Delete from repository
    // 2. Reload tasks
    // 3. Notify listeners
  }
}
