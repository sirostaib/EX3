class Task {
  String title;
  bool status;

  Task(this.title, this.status);

  Task.copy(Task from) : this(from.title, from.status);

  update(Task t) {
    title = t.title;
    status = t.status;
  }
}
