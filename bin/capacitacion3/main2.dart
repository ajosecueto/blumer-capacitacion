import 'dart:convert';

import 'package:http/http.dart' as http;

import 'todo.dart';

void main() async {
  try {
    final success = await createTodo("Aprender Flutter dia 4", false);
    print(success);
    final successGet = await getTodos();
    print(successGet);
    final successGetObjet = await getTodo(9);
    print(successGetObjet);
    final successPut = await updateTodo(9, "APRENDER DART", true);
    print(successPut);
    final successDelete = await deleteTodo(7);
    print(successDelete);
  } catch (e) {
    print("se ha producido un error $e");
  }
}

Future<dynamic> createTodo(String description, bool done) async {
  var url = "http://localhost:5000/todo";
  final response = await http.post(url,
      headers: {"Content-Type": "application/json"},
      body: json.encode({"description": description, "done": done}));
  print(response.statusCode);
  if (response.statusCode >= 200 && response.statusCode < 300) {
    print(response.body.toUpperCase());
    return true;
  }
  return false;
}

Future<List<Todo>> getTodos() async {
  var url = "http://localhost:5000/todos";
  final response = await http.get(
    url,
    headers: {"Content-Type": "application/json"},
  );
  print(response.statusCode);
  if (response.statusCode >= 200 && response.statusCode < 300) {
    return (json.decode(response.body) as List)
        .map((e) => Todo.fromJson(e))
        .toList();
  }
  return null;
}

Future<Todo> getTodo(int id) async {
  var url = "http://localhost:5000/todo/$id";
  final response = await http.get(
    url,
    headers: {"Content-Type": "application/json"},
  );
  print(response.statusCode);
  if (response.statusCode >= 200 && response.statusCode < 300) {
    return Todo.fromJson(json.decode(response.body));
  }
  if (response.statusCode >= 400) {
    return Future.error(response.body);
  }
  return null;
}

Future<dynamic> updateTodo(int id, String description, bool done) async {
  var url = "http://localhost:5000/todo/$id";
  final response = await http.put(url,
      headers: {"Content-Type": "application/json"},
      body: json.encode({"description": description, "done": done}));
  print(response.statusCode);
  if (response.statusCode >= 200 && response.statusCode < 300) {
    print(response.body.toUpperCase());
    return true;
  }
  return false;
}

Future<dynamic> deleteTodo(int id) async {
  var url = "http://localhost:5000/todo/$id";
  final response =
      await http.delete(url, headers: {"Content-Type": "application/json"});
  print(response.statusCode);
  if (response.statusCode >= 200 && response.statusCode < 300) {
    print(response.body.toUpperCase());
    return true;
  }
  return false;
}
