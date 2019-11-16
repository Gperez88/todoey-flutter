import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/utilities/constants.dart';
import 'package:todoey/widgets/task_list.dart';

import 'add_task_screen.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> tasks = [
    Task(name: 'Buy eggs'),
    Task(name: 'Buy juice'),
    Task(name: 'Buy milk'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(
                (newTaskTitle) {
                  setState(() {
                    tasks.add(Task(name: newTaskTitle));
                  });

                  Navigator.pop(context);
                }
              ));
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SafeArea(
            child: Container(
                  padding: EdgeInsets.only(
                    top: 16,
                    bottom: 16,
                    left: 32,
                    right: 32,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.list,
                            color: Colors.lightBlueAccent,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Todoey',
                        style: TextStyle (
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '${tasks.length} Tasks',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
          ),
          Expanded(
            child: Container(
              decoration: kTopBorderRadiusDecoration,
              child: TaskList(tasks),
            ),
          ),
        ],

      ),
    );
  }
}

