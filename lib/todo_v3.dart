import 'package:flutter/material.dart';

class TodoApp3 extends StatefulWidget {
  const TodoApp3({super.key});

  @override
  State<TodoApp3> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp3> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _tasks = [];

  void _addTask() {
    setState(() {
      _tasks.add(_controller.text);
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
                return ListTile(title: Text(_tasks[index]));
              },
            ),
          ),
        ],
      ),
    );
  }
}
