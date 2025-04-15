import 'package:flutter/material.dart';
import 'package:todoapp/ui/todo/widgets/todo_item.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<StatefulWidget> createState() => TodoState();
}

class TodoState extends State {

  final List<TodoItem> _todos = [];
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TextField(
          controller: _textEditingController,
          onSubmitted: null,
        ),
        FloatingActionButton(onPressed: () {
            _addTodo(_textEditingController.text);
          }, child: Text("Add Todo"),
        ),
        Column(children: _todos,)
      ],
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  _addTodo(String task) {
    setState(() {
      _todos.add(TodoItem(task: task));
    });
  }
}