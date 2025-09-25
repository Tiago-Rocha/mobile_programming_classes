/// ---------------------
/// Modelo da Task
/// ---------------------
class Task {
  String id = DateTime.now().millisecondsSinceEpoch.toString();
  String title;
  bool isDone;

  Task({required this.title, this.isDone = false});

  Map<String, dynamic> toMap() => {'title': title, 'isDone': isDone};

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(title: map['title'], isDone: map['isDone'] ?? false);
  }
}
