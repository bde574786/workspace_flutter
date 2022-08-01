import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_demo_mvc/controller/todo_controller.dart';
import 'package:flutter_demo_mvc/repository/todo_repository.dart';

import '../repository/todo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var todoController = TodoController(TodoRepository());

    return Scaffold(
      appBar: AppBar(
        title: Text('REST API EX'),
      ),
      body: FutureBuilder<List<Todo>>(
        future: todoController.fetchTodoList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } // end of if
          if (snapshot.hasError) {
            return Center(
              child: Text("ERROR"),
            );
          }
          return buildBodyContent(snapshot, todoController);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // POST 호출
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

SafeArea buildBodyContent(
    AsyncSnapshot<List<Todo>> snapshot, TodoController todoController) {
  return SafeArea(
    child: ListView.separated(
        itemBuilder: (context, index) {
          var todo = snapshot.data?[index];
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            height: 100.0,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text('${todo?.id}'),
                ),
                Expanded(
                  flex: 2,
                  child: Text('${todo?.title}'),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: buildCallContainer(
                          'put',
                          Color(0xFFF1BEE7),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          todoController
                              .updatePatchCompleted(todo!)
                              .then((value) => {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            duration: const Duration(
                                                milliseconds: 500),
                                            content: Text('$value')))
                                  });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: Duration(milliseconds: 500),
                              content: Text("ok"),
                            ),
                          );
                        },
                        child: buildCallContainer(
                          'patch',
                          Color(0xFFFFCDD2),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: buildCallContainer(
                          'del',
                          Color(0xFFFFCDD2),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 0.5,
            height: 0.5,
          );
        },
        itemCount: snapshot.data?.length ?? 0),
  );
}

Container buildCallContainer(String title, Color color) {
  return Container(
    width: 40.0,
    height: 40.0,
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
    child: Center(
      child: Text('${title}'),
    ),
  );
}
