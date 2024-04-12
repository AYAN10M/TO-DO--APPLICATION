import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  // reference our box
  final _myBox = Hive.box('mybox');

  // method for default to do tasks if running the app for first time
  void createInitialData() {
    toDoList = [
      ["Exercise Daily", false],
      ["Do daily 5 DSA questions", false],
    ];
  }

  // method to load data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the data base
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
