// ❌ BAD: Mixed responsibilities, poor naming, no validation.
class User {
  String name;
  List<String> taskTitles = [];

  User(this.name);

  void add(String title) {
    taskTitles.add(title);
    print("Added task " + title + " to " + name);
  }

  void printInfo() {
    print("USER INFO START");
    print(name);
    print(taskTitles.length);
    print("USER INFO END");
  }
}
