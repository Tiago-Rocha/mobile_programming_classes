import 'package:flutter/material.dart';

class TodoApp1 extends StatelessWidget {
  const TodoApp1({super.key});
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
                  decoration: InputDecoration(
                    hintText: "Escreve uma tarefa...",
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {}, // vazio por agora
                child: Text("Add"),
              ),
            ],
          ),
          // Aqui vamos meter a lista mais tarde
          Expanded(
            child: Container(
              color: Colors.grey[200], // placeholder para a lista
              child: Center(child: Text("Lista de tarefas")),
            ),
          ),
        ],
      ),
    );
  }
}
