import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:model/model.dart';
import 'package:repository/repository.dart';
import 'package:app/flavors.dart';



class RemoteTodoRepo implements TodoRepo {
  final client = http.Client();
  // android emulater の時は localhostでなく　10.0.2.2
  final baseUrl = F.name == 'development' ? 'http://localhost:8080' :
   env.AZURETASK;

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
