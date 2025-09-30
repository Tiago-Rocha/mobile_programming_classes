import 'package:equatable/equatable.dart';

class Task extends Equatable {
  final String id;
  final String title;
  final bool isDone;

  Task({String? id, required this.title, this.isDone = false})
    : id = id ?? DateTime.now().millisecondsSinceEpoch.toString();

  Map<String, dynamic> toMap() => {'id': id, 'title': title, 'isDone': isDone};

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      title: map['title'],
      isDone: map['isDone'] ?? false,
    );
  }

  @override
  List<Object?> get props => [id, title];
}
