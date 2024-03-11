import 'package:app/core/store/todo_store.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../data/remote_todo_repo.dart';

class GetAlltodosMutation extends VxMutation<TodoStore> {
  GetAlltodosMutation();

  @override
  perform() async {
    final todos = await RemoteTodoRepo().fetchAllTodo();
    store!.todoes = todos;
  }
}
