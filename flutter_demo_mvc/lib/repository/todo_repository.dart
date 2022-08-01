import 'dart:convert';

import 'package:flutter_demo_mvc/repository/repository.dart';
import 'package:flutter_demo_mvc/repository/todo.dart';
import 'package:http/http.dart' as http;

class TodoRepository implements Repository {
  String dataURL = "https://jsonplaceholder.typicode.com";

  @override
  Future<String> deletedTodo(Todo todo) {
    // TODO: implement deletedTodo
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> getTodoList() async {
    List<Todo> todoList = [];

    var url = Uri.parse('$dataURL/todos');
    var response = await http.get(url); // 안정적으로 리턴

    print("status code : ${response.statusCode}");
    print("status code : ${response.body}");
    var body = json.decode(response.body);
    print("decode body : ${body}");

    // 파싱
    for (var i = 0; i < body.length; i++) {
      todoList.add(Todo.fromJson(body[i]));
    }

    return todoList;
  }

  // GET, DELETE (body X)
  // POST, PUT, PATCH (body O)
  @override
  Future<String> patchCompleted(Todo todo) async {
    var uri = Uri.parse('$dataURL/todos/${todo.id}');
    String resData = 'error';
    await http.patch(
      uri,
      body: {
        'completed': (todo.completed!).toString(),
      },
    ).then((response) {
      print("response body : ${response.body}");
      Map<String, dynamic> result = json.decode(response.body);
      return resData = result['completed'];
    });
    return resData;
  }

  @override
  Future<String> postTodo(Todo todo) async {
    var uri = Uri.parse('$dataURL/todos/${todo.id}');

    await http.post(
      uri,
      body: {
        'userId': (todo.userId!).toString(),
        'id': (todo.id!).toString(),
        'title': (todo.title!).toString(),
        'completed': (todo.completed!).toString()
      },
    ).then((response) {
      print("response body : ${response.body}");
    });
    throw Exception();
  }

  @override
  Future<String> putCompleted(Todo todo) {
    throw UnimplementedError();
  }
}
