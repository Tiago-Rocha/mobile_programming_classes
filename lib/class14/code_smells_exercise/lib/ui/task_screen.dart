import 'package:flutter/material.dart';
import '../services/user_manager.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  final manager = UserManager();
  final nameCtrl = TextEditingController();
  final taskCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task Tracker")),
      body: Column(
        children: [
          TextField(
            controller: nameCtrl,
            decoration: const InputDecoration(labelText: "User name"),
          ),
          TextField(
            controller: taskCtrl,
            decoration: const InputDecoration(labelText: "Task title"),
          ),
          ElevatedButton(
            onPressed: () {
              manager.register(nameCtrl.text);
              manager.assignTask(nameCtrl.text, taskCtrl.text);
              setState(() {});
            },
            child: const Text("Add Task"),
          ),
          ElevatedButton(
            onPressed: () {
              manager.showAllUsers();
              setState(() {});
            },
            child: const Text("Show All"),
          ),
        ],
      ),
    );
  }
}
