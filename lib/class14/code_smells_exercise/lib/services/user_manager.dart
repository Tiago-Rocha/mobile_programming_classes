import '../models/user.dart';
import 'logger.dart';
import 'task_service.dart';

class UserManager {
  List<User> users = [];
  final logger = Logger();
  final taskService = TaskService(logger: Logger());
  final int minimumNameLength = 3;

  void register(String name) {
    if (name.length > minimumNameLength) {
      int id = 1;
      id++;
      users.add(User(id, name));
      logger.log("User registered: $name");
    } else {
      print("Invalid name");
    }
  }

  void assignTask(String userName, String title) {
    for (var user in users) {
      if (user.name == userName) {
        taskService.addTask(title, userName);
        user.add(title);
      }
    }
  }

  void showAllUsers() {
    for (var user in users) {
      user.printInfo();
    }
  }

  void resetAll() {
    users.clear();
    taskService.tasks.clear();
    print("Reset done");
  }
}
