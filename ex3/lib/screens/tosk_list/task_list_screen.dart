import 'package:flutter/material.dart';
import 'package:ex3/models/todo.dart';
import 'bar.dart';
import 'body.dart';
import 'float.dart';

class TaskListScreen extends StatefulWidget {
  // ignore: non_constant_identifier_names
  final Todo TD;

  TaskListScreen(this.TD, {Key? key}) : super(key: key);

  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: SafeArea(
          child: Scaffold(
            appBar: TaBar(widget.TD.title),
            body: TaBody(widget.TD.myTask),
            floatingActionButton: TaFloat(widget.TD),
          ),
        ));
  }
}
