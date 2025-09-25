import 'package:flutter/material.dart';
import 'package:todo_app/aula4/task.dart';
import 'package:todo_app/aula4/task_tile.dart';

class TodoV4 extends StatefulWidget {
  const TodoV4({super.key});

  @override
  State<TodoV4> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoV4> {
  final TextEditingController _controller = TextEditingController();
  final List<Task> _tasks = [];

  void _addTask() {
    setState(() {
      final newTask = Task(title: _controller.text, isDone: false);
      _tasks.add(newTask);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ToDo App")),
      body: Column(
        children: [
          // Input + botão
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: "Escreve uma tarefa...",
                  ),
                ),
              ),
              ElevatedButton(onPressed: _addTask, child: Text("Add")),
            ],
          ),
          // Lista dinâmica de tarefas
          Expanded(
            child: ListView.builder(
              itemCount: _tasks.length,
              itemBuilder: (context, index) {
                return TaskTile(task: _tasks[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
