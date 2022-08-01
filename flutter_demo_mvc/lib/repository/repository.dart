import 'package:flutter_demo_mvc/repository/todo.dart';

abstract class Repository {
  Future<List<Todo>> getTodoList();
  Future<String> putCompleted(Todo todo);
  Future<String> deletedTodo(Todo todo);
  Future<String> postTodo(Todo todo);
  Future<String> patchCompleted(Todo todo);

  // albums
  // comments

}
