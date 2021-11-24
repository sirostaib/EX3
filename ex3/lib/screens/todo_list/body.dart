import 'package:flutter/material.dart';
import 'package:ex3/models/mock_todos.dart';
import 'package:ex3/models/todo.dart';

import 'package:ex3/screens/tosk_list/task_list_screen.dart';

class TBody extends StatefulWidget {
  const TBody({Key? key}) : super(key: key);
  @override
  _TBodyState createState() => _TBodyState();
}

class _TBodyState extends State<TBody> {
  final List<Todo> td = myToDo;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => ListTile(
              title: Text(td[index].title),
              subtitle: Text("This list has " +
                  td[index].myTask.length.toString() +
                  " task(s)"),
              trailing: CircleAvatar(
                child: Text(td[index].percentage.toString()),
              ),
              onTap: () async {
                final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            TaskListScreen(Todo.copy(td[index]))));
                if (result != null) {
                  td[index].update(result);
                  setState(() {});
                }
                if (result == null) {
                  setState(() {});
                }
              },
            ),
        separatorBuilder: (context, index) =>
            const Divider(color: Colors.black),
        itemCount: td.length);
  }
}
