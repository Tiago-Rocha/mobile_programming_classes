// BEFORE ❌
// This class handles too many responsibilities: loading, saving, and logging.
class UserManager {
  List<String> users = [];

  void loadUsers() {
    print("Loading users from DB...");
    users = ["Alice", "Bob", "Charlie"];
  }

  void saveUser(String user) {
    print("Saving user $user");
    users.add(user);
  }

  void logAction(String message) {
    print("LOG: $message");
  }
}

// AFTER ✅
// Split responsibilities into multiple classes and use composition.
class UserRepository {
  List<String> _users = [];

  List<String> loadUsers() => ["Alice", "Bob", "Charlie"];
  void saveUser(String user) => _users.add(user);
}

class Logger {
  void log(String message) => print("LOG: $message");
}

class UserService {
  final UserRepository repository;
  final Logger logger;

  UserService(this.repository, this.logger);

  void addUser(String user) {
    repository.saveUser(user);
    logger.log("User added: $user");
  }
}
