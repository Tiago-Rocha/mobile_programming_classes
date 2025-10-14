class Task {
  String title;
  bool done;
  String user;

  Task(this.title, this.done, this.user);

  // void printTask() {
  //   print(title + " -> " + (done ? "DONE" : "TODO"));
  // }

  //Deve ser modelo da task para ser usado, não deve dar print, senão cada vez que a class é usada, daria print separado
}
