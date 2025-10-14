import '../models/user.dart';
import 'logger.dart';
import 'task_service.dart';

class UserManager {
  List<User> users = [];
  final logger = Logger();
  final taskService = TaskService();

  void register(String name) {
    if (name.length > 3) {
      users.add(User(name));
      logger.log("User registered: $name");
    } else {
      print("Invalid name");
    }
  }

  void assignTask(String userName, String title) {
    for (var u in users) {
      if (u.name == userName) {
        taskService.addTask(title, userName);
        u.add(title);
      }
    }
  }

  void showAllUsers() {
    for (var u in users) {
      u.printInfo();
    }
  }

  void resetAll() {
    users.clear();
    taskService.tasks.clear();
    print("Reset done");
  }
}
