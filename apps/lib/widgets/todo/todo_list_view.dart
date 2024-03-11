import 'package:flutter/material.dart';
import 'package:app/core/mutations/todo/delete_todoes.dart';
import 'package:app/core/mutations/todo/get_all_todoes.dart';
import 'package:app/core/mutations/todo/update_todo.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../core/store/todo_store.dart';

class TodoListView extends StatelessWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return VxBuilder(
      mutations: const {GetAlltodosMutation},
      builder: (context, store, status) {
        final todos = (store as TodoStore).todoes;
        return Column(children: [
          Expanded(
            child: status == VxStatus.loading
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: todos.length,
                    itemBuilder: (context, index) {
                      final todo = todos[index];
                      return ListTile(
                        title: Text(todo.text)
                            .text
                            .white
                            .xl
                            .semiBold
                            .make()
                            .box
                            .p32
                            .rounded
                            .color(context.theme.primaryColor)
                            .make(),
                
                        trailing: ButtonBar(
                          children: [
                            IconButton(
                                onPressed: () {
                                  DeletetodoMutation(todo.id);
                                },
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ))
                          ],
                        ).w(context.percentWidth * 10),
                      );
                    },
                  ),
          ),
        ]);
      },
    );
  }
}
