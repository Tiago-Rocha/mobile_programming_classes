import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: TodoApp6()));
}

class Task {
  String title;
  bool isDone;

  Task({required this.title, this.isDone = false});

  /// Converte Task para Map (para serializar em JSON)
  Map<String, dynamic> toMap() {
    return {'title': title, 'isDone': isDone};
  }

  /// Converte Map em Task (para deserializar JSON)
  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(title: map['title'], isDone: map['isDone'] ?? false);
  }
}

class TodoApp6 extends StatefulWidget {
  const TodoApp6({super.key});

  @override
  State<TodoApp6> createState() => _TodoApp6State();
}

class _TodoApp6State extends State<TodoApp6> {
  List<Task> tasks = [];
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadTasks();
  }

  Future<void> _loadTasks() async {
    final prefs = await SharedPreferences.getInstance();
    final taskStrings = prefs.getStringList('tasks') ?? [];
    setState(() {
      tasks = taskStrings
          .map((taskStr) => Task.fromMap(jsonDecode(taskStr)))
          .toList();
    });
  }

  Future<void> _saveTasks() async {
    final prefs = await SharedPreferences.getInstance();
    final taskStrings = tasks.map((t) => jsonEncode(t.toMap())).toList();
    await prefs.setStringList('tasks', taskStrings);
  }

  Future<void> _addTask(String taskTitle) async {
    if (taskTitle.trim().isEmpty) return;
    setState(() {
      tasks.add(Task(title: taskTitle));
    });
    await _saveTasks();
    _controller.clear();
  }

  Future<void> _toggleTask(int index) async {
    setState(() {
      tasks[index].isDone = !tasks[index].isDone;
    });
    await _saveTasks();
  }

  Future<void> _deleteTask(int index) async {
    setState(() {
      tasks.removeAt(index);
    });
    await _saveTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo App - Class 6')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(labelText: 'Add a task'),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () => _addTask(_controller.text),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  tasks[index].title,
                  style: TextStyle(
                    decoration: tasks[index].isDone
                        ? TextDecoration.lineThrough
                        : null,
                  ),
                ),
                leading: Checkbox(
                  value: tasks[index].isDone,
                  onChanged: (_) => _toggleTask(index),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => _deleteTask(index),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
