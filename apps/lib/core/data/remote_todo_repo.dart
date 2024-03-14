import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:model/model.dart';
import 'package:repository/repository.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


class RemoteTodoRepo implements TodoRepo {
  final client = http.Client();
    final baseUrl = dotenv.env['API_SERVER'];

  @override
  Future<List<Todo>> fetchAllTodo() async {
    final response = await client.get(
      Uri.parse("$baseUrl/todos"),
    );
    final json = response.body;
    return [for (final todo in jsonDecode(json)) todo.fromJson(todo)];
  }

  @override
  Future<Todo> getTodoById(String id) async {
    final response = await client.get(Uri.parse("$baseUrl/todos/$id"));
    final json = response.body;
    return Todo.fromJson(jsonDecode(json));
  }

  @override
  Future<Todo> addTodo(Todo todo) async {
    final response = await client.post(
      Uri.parse("$baseUrl/todos"),
      body: jsonEncode(todo.toJson()),
    );
    final json = response.body;
    return Todo.fromJson(jsonDecode(json));
  }

  @override
  Future<void> deleteTodo(String id) async {
    await client.delete(Uri.parse("$baseUrl/todos/$id"));
  }

  @override
  Future<void> updateTodo(Todo todo) async {
    await client.put(
      Uri.parse("$baseUrl/todos/${todo.id}"),
      body: jsonEncode(todo.toJson()),
    );
  }
}
