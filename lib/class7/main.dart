import 'package:flutter/material.dart';

import 'package:todo_app/class7/presentation/task.dart';
import 'package:todo_app/class7/presentation/task_manager.dart';
import 'package:todo_app/class7/presentation/task_repository.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: TodoApp7()));
}

class TodoApp7 extends StatefulWidget {
  const TodoApp7({super.key});

  @override
  State<TodoApp7> createState() => _TodoApp7State();
}

class _TodoApp7State extends State<TodoApp7> {
  final TaskManager manager = TaskManager(repository: TaskRepository());
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo App - Class 7')),
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
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      manager.addTask(Task(title: _controller.text));
                      _controller.clear();
                    }
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: ListenableBuilder(
              listenable: manager,
              builder: (context, _) {
                return ListView.builder(
                  itemCount: manager.tasks.length,
                  itemBuilder: (context, index) {
                    final task = manager.tasks[index];
                    return ListTile(
                      title: Text(task.title),
                      subtitle: Text(
                        DateTime.fromMillisecondsSinceEpoch(
                          int.parse(task.id),
                        ).toLocal().toString(),
                      ),
                      leading: Checkbox(
                        value: task.isDone,
                        onChanged: (_) => manager.markDone(task.id),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => manager.deleteTask(task.id),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
