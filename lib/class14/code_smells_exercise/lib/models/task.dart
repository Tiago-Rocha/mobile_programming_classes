class Task {
  String title;
  bool done;
  String user;

  Task(this.title, this.done, this.user);

  void printTask() {
    print(title + " -> " + (done ? "DONE" : "TODO"));
  }
}
