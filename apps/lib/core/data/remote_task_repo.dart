import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:model/model.dart';
import 'package:repository/repository.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


class RemoteTaskRepo implements TaskRepo {
  final client = http.Client();
  final baseUrl = dotenv.env['API_SERVER'];

  @override
  Future<List<Task>> fetchAllTasks() async {
    print("baseurl=");
    print(baseUrl);
    final response = await client.get(
      Uri.parse("$baseUrl/tasks"),
    );
    

    final json = response.body;
    return [for (final task in jsonDecode(json)) Task.fromJson(task)];
  }

  @override
  Future<Task> getTaskById(String id) async {
    final response = await client.get(Uri.parse("$baseUrl/tasks/$id"));
    final json = response.body;
    return Task.fromJson(jsonDecode(json));
  }

  @override
  Future<Task> addTask(Task task) async {
    final response = await client.post(
      Uri.parse("$baseUrl/tasks"),
      body: jsonEncode(task.toJson()),
    );
    final json = response.body;
    return Task.fromJson(jsonDecode(json));
  }

  @override
  Future<void> deleteTask(String id) async {
    await client.delete(Uri.parse("$baseUrl/tasks/$id"));
  }

  @override
  Future<void> updateTask(Task task) async {
    await client.put(
      Uri.parse("$baseUrl/tasks/${task.id}"),
      body: jsonEncode(task.toJson()),
    );
  }
}
