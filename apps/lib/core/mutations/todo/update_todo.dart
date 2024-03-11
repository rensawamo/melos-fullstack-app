import 'package:app/core/data/remote_todo_repo.dart';
import 'package:app/core/store/todo_store.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:model/model.dart';
import 'get_all_todoes.dart';

class UpdateTodoMutation extends VxMutation<TodoStore> {
  final Todo todo;

  UpdateTodoMutation(this.todo);

  @override
  perform() async {
    await RemoteTodoRepo().updateTodo(todo);
    GetAlltodosMutation();
  }
}
