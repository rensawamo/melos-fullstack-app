import 'package:flutter/material.dart';
import 'package:app/core/mutations/todo/add_todo.dart';

class AddtodoWidget extends StatelessWidget {
  const AddtodoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final todoController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: todoController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Add New todo",
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          FloatingActionButton(
            onPressed: () {
              AddtodoMutation(todoController.text);
              todoController.clear();
            },
            child: const Icon(Icons.done),
          )
        ],
      ),
    );
  }
}
