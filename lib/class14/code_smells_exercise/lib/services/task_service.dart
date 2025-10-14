import '../models/task.dart';
import 'logger.dart';

class TaskService {
  final List<Task> tasks = [];
  final logger = Logger();

  void addTask(String title, String username) {
    if (title != "") {
      tasks.add(Task(title, false, username));
      logger.log("Task added: " + title);
    } else {
      print("Error: Title cannot be empty");
    }
  }

  void showAllTasks() {
    for (var task in tasks) {
      print(task.title.toUpperCase());
      print(task.done);
      print(task.user);
    }
  }
}
