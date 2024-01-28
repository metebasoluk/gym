import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/TODO/models/todo_model.dart';
import 'package:uuid/uuid.dart';

class TodoListManager extends StateNotifier<List<TodoModel>> {
   
  
   
  TodoListManager([List<TodoModel>? initialTodos]) : super(initialTodos ?? []);
  

  State<StatefulWidget> createState() {
  // TODO: implement createState
  throw UnimplementedError();
}

  void addTodo(String description) {
    var eklenecekTodo =
        TodoModel(id: const Uuid().v4(), description: description);
    state = [...state, eklenecekTodo];
  }

  void toggle(String id) {
    state = [
      for (var todo in state)
        if (todo.id == id)
          TodoModel(
              id: todo.id,
              description: todo.description,
              completed: !todo.completed)
        else
          todo,
    ];
  }

  void edit({required String id, required String newDescription}) {
    state = [
      for (var todo in state)
        if (todo.id == id)
          TodoModel(
              id: todo.id,
              completed: todo.completed,
              description: newDescription)
        else
          todo
    ];
  }

  void remove(TodoModel silinecekTodo) {
    state = state.where((element) => element.id != silinecekTodo.id).toList();
  }

  int onCompletedTodoCount() {
    return state.where((element) => !element.completed).length;
  }
}
