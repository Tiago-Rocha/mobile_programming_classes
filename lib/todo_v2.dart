import 'package:flutter/material.dart';

class TodoApp2 extends StatelessWidget {
  final List<String> tasks = ["Buy milk", "Walk dog", "Do homework"];

  TodoApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ToDo App")),
      body: Column(
        children: [
          // Input + botão em cima
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Escreve uma tarefa...",
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {}, // sem lógica ainda
                child: Text("Add"),
              ),
            ],
          ),
          // Lista fixa de tarefas por baixo
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return ListTile(title: Text(tasks[index]));
              },
            ),
          ),
        ],
      ),
    );
  }
}
