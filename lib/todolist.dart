import 'package:flutter/material.dart';

import 'tasklist.dart';


class ToDoList extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.transparent,
      ),
      home: TaskList(),
    );
  }
}
