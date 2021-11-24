import 'package:flutter/material.dart';
import 'package:ex3/models/mock_todos.dart';
import 'package:ex3/models/todo.dart';

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
                  " task(S)"),
              trailing: CircleAvatar(
                child: Text(td[index].percentage.toString()),
              ),
              onTap: () async {
                final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                           // taskListscreen(Todo.copy(td[index]))));
                if (result != null) {
                  td[index].update(result);
                  setState(() {});
                }
                if (result == null) {
                  setState(() {});
                }
              },
            ),
        separatorBuilder: (context, index) => Divider(color: Colors.blueGrey),
        itemCount: td.length);
  }
}
