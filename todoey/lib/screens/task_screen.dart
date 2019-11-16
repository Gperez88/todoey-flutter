import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
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
                    height: 16,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle (
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text('12 Tasks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16.0),
                      topLeft: Radius.circular(16.0)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
