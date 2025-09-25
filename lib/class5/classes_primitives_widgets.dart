import 'package:flutter/material.dart';

/// ----------------------
/// Dart Primitives
/// ----------------------
/// Dart has several basic data types called primitives.
/// These are used to store simple values.
int age = 20; // Integer type
double price = 19.99; // Floating point type
bool isDone = false; // Boolean type
String name = "Alice"; // String type

/// ----------------------
/// Basic Syntax: Function
/// ----------------------
/// Functions are blocks of code that perform a specific task.
/// You can pass parameters to functions.
void greet(String name) {
  print("Hello, $name!");
}

String fullName(String firstName, String secondName) {
  return "$firstName $secondName";
}

int calculateTotalPoints(int wins, int draws) {
  return (wins * 3) + draws;
}

/// ----------------------
/// Model Class Example
/// ----------------------
/// A class is a blueprint for creating objects.
/// Here, 'Task' is a Type. When we create a Task, it's called an instance.
class Task {
  String title;
  bool isDone;

  /// Constructor: Used to create an instance of Task.
  /// 'this.title' and 'this.isDone' assign values to the instance.
  Task(this.title, this.isDone);
}

/// ----------------------
/// Manager Class Example
/// ----------------------
/// This class manages a list of tasks.
/// It contains logic for adding and updating tasks.
class TaskManager {
  List<Task> tasks = []; // List to store Task instances

  /// Adds a new Task to the list
  void addTask(Task task) {
    tasks.add(task);
  }

  /// Marks a task as done by its index
  void markDone(int index) {
    tasks[index].isDone = true;
  }
}

/// ----------------------
/// StatelessWidget Example
/// ----------------------
/// Widgets are the building blocks of Flutter UI.
/// StatelessWidget is a widget that does not change over time.
class HelloWidget extends StatelessWidget {
  final String name; // Property to hold the name

  /// Constructor: Used to inject the 'name' dependency into the widget.
  const HelloWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    // The build method returns the UI for this widget.
    return Text('Hello, $name!');
  }
}

/// ----------------------
/// Constructor, Type vs Instance
/// ----------------------
/// - 'Task' is a Type (the blueprint).
/// - 'myTask' is an instance (an object created from the blueprint).
Task myTask = Task(
  'Learn Dart',
  false,
); // Creating an instance using the constructor

/// ----------------------
/// Dependency Injection Example
/// ----------------------
/// Dependency Injection means passing an object into another object,
/// usually through the constructor. This makes code flexible and testable.

/// Engine class to be injected
class Engine {
  void start() {
    print('Engine started!');
  }
}

/// Car class that receives an Engine via its constructor
class Car {
  final Engine engine; // Dependency

  /// Constructor injects the Engine dependency
  Car(this.engine);

  void drive() {
    engine.start(); // Uses the injected Engine
    print('Car is driving');
  }
}

/// Usage example for Dependency Injection
Engine myEngine = Engine(); // Create an Engine instance
Car myCar = Car(myEngine); // Inject Engine into Car
// Now you can use myCar.drive() to see dependency injection in action
