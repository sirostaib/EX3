import 'package:flutter/material.dart';
import 'package:ex3/models/task.dart';

class TaBody extends StatefulWidget {
  final List<Task> t;

  TaBody(this.t);

  @override
  State<TaBody> createState() => _TaBodyState();
}

class _TaBodyState extends State<TaBody> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => ListTile(
              title: Text(
                widget.t[index].title,
                style: widget.t[index].status == true
                    // if it is not checked apply no style
                    ? const TextStyle()
                    // if it is checked, apply line through style
                    : const TextStyle(decoration: TextDecoration.lineThrough),
              ),
              // on click or tap, toggle the status and update the state
              onTap: () {
                setState(() {
                  widget.t[index].status = !widget.t[index].status;
                });
              },
              // on long click or long press, remove the task and update the state
              onLongPress: () {
                setState(() {
                  widget.t.removeAt(index);
                });
              },
            ),
        separatorBuilder: (context, index) => const Divider(
              color: Colors.black,
            ),
        itemCount: widget.t.length);
  }
}
