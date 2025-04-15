import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {

  final String task;

  const TodoItem({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(task),
        Expanded(
          child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(onPressed: null, icon: Icon(Icons.check, color: Colors.green,))
          ),
        ),
        IconButton(onPressed: null, icon: Icon(Icons.delete, color: Colors.red,)),
      ],
    );
  }
}