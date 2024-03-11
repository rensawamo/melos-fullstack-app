import 'package:app/core/data/remote_todo_repo.dart';
import 'package:app/core/store/todo_store.dart';
import 'package:velocity_x/velocity_x.dart';

import 'get_all_todoes.dart';

class DeletetodoMutation extends VxMutation<TodoStore> {
  final String id;

  DeletetodoMutation(this.id);

  @override
  perform() async {
    await RemoteTodoRepo().deleteTodo(id);
    GetAlltodosMutation();
  }
}
