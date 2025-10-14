// ❌ BAD: No encapsulation, magic strings, inconsistent naming.
class Task {
  String title;
  bool done;
  String user; // bad — references user by name, not object

  Task(this.title, this.done, this.user);

  void printTask() {
    print(title + " -> " + (done ? "DONE" : "TODO"));
  }
}
