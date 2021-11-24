import 'package:ex3/models/task.dart';

class Todo {
  String title;
  List<Task> myTask;

  int get percentage {
    int count = 0;
    for (int i = 0; i < myTask.length; i++) {
      if (myTask[i].status == true) {
        count++;
      }
    }
    return ((count / myTask.length) * 100).toInt();
  }

  Todo(this.title, this.myTask);
  Todo.copy(Todo from)
      : this(from.title, [for (Task _task in from.myTask) Task.copy(_task)]);

  update(Todo t) {
    title = t.title;
    myTask = t.myTask;
  }
}
