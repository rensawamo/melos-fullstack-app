import 'package:app/core/mutations/todo/get_all_todoes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'core/mutations/task/get_all_tasks.dart';
import 'widgets/task/add_task_widget.dart';
import 'widgets/task/task_list_view.dart';
import 'widgets/todo/add_todo_widget.dart';
import 'widgets/todo/todo_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tasks"),
        actions: [
          const VxDarkModeButton(
            showSingleIcon: true,
          ),
          IconButton(
            // onPressed: () => GetAllTasksMutation(),
            onPressed: () => GetAlltodosMutation(),
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),

          // YOU CAN CHANGE APP ALSO CAN CREATE DIFFERNTCE DIRECTORY
          // child: TaskListView(),
          child: TodoListView(),

        ),
      ),
     
      // bottomNavigationBar: const AddTaskWidget(),
    );
  }
}
