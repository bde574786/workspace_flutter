import 'package:flutter_demo_mvc/repository/repository.dart';

import '../repository/todo.dart';

class TodoController {
  // 다형성 활용
  final Repository _repository;

  TodoController(this._repository);

  // get todo list
  Future<List<Todo>> fetchTodoList() async {
    return _repository.getTodoList();
  }

  Future<String> updatePatchCompleted(Todo todo) async {
    return _repository.patchCompleted(todo);
  }

  Future<String> postCompleted(Todo todo) async {
    return _repository.postTodo(todo);
  }
}
