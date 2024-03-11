import 'package:app/core/data/remote_todo_repo.dart';
import 'package:app/core/store/todo_store.dart';
import 'package:uuid/uuid.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:model/model.dart';
import 'get_all_todoes.dart';

class AddtodoMutation extends VxMutation<TodoStore> {
  final String todo;

  AddtodoMutation(this.todo);

  @override
  perform() async {
    final Todo newtodo =
        Todo(id: const Uuid().v4(), text: todo);
    await RemoteTodoRepo().addTodo(newtodo);
    GetAlltodosMutation();
  }
}
