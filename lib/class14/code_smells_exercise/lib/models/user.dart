// This class has code smells because it tries to add tasks to users, when it should only represent a user.
class User {
  String name;
  List<String> taskTitles = [];

  User(this.name);

  void printInfo() {
    print("USER INFO START");
    print(name);
    print(taskTitles.length);
    print("USER INFO END");
  }
}
