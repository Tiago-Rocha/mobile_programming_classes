import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String greeting;
  Home({required this.greeting});
  @override
  Widget build(BuildContext context) {
    return Text(greeting);
  }
}

String greetBasedOnTime(DateTime time) {
  final hour = time.hour;
  if (hour >= 20 || hour < 5) {
    return 'Good night';
  } else if (hour >= 12) {
    return 'Good afternoon';
  } else {
    return 'Good morning';
  }
}


// Se for after 8PM print good night
// If before 8PM print good morning