import 'task.dart';
import 'todo.dart';

final myToDo = <Todo>[
  Todo("House Tasks", [
    Task("Clean the windows", false),
    Task("Wash the Dishes", false),
    Task("Mop the floor", true),
    Task("Throw the Trash", false),
    Task("Feed the Kids", false)
  ]),
  Todo("Study Uni", [
    Task("MAP", true),
    Task("English", true),
    Task("AI", false),
    Task("Web Technology", false),
    Task("Internet Programming", true)
  ]),
  Todo("Movies to Watch", [
    Task("Goodfellas", true),
    Task("The Irishman", true),
    Task("Scarface", true),
    Task("Schindlers List", true)
  ]),
];
