import '../models/task.dart';
import 'logger.dart';

//A classe TaskService está com code smells, pois há duplicação de código nos métodos addTask e addAnotherTask.

class TaskService {
  final List<Task> tasks = [];
  final logger = Logger();

  void addTask(String title, String username) {
    if (title != "") {
      tasks.add(Task(title, false, username));
      logger.log("Task added: " + title);
    } else {
      print("Error");
    }
  }

// Usar o método addTask para não duplicar código

  void addAnotherTask(String title, String username) {
    addTask(title, username);
  }

  void showAllTasks() {
    for (var task in tasks) {
      print(task.title.toUpperCase());
      print(task.done);
      print(task.user);
    }
  }
}
