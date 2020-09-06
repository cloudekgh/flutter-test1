import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: EdgeInsets.only(left: 16),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 9,
                      child: Container(
                          height: 100,
                          child: Align(
                              child: Text('New Task',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center))),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.close),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "what are you planning?",
                      style: TextStyle(fontSize: 18, color: Colors.black38),
                    )
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.black26),
                      hintText: 'input your task'),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16, top: 100, bottom: 30),
                  child: Divider(
                    color: Colors.black38,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Icon(Icons.notifications,
                          color: Colors.blue.shade200),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 20),
                        child: Text('May 29, 14:00'))
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Icon(
                        Icons.note,
                        color: Colors.black12,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 20),
                        child: Text('Add note',
                            style: TextStyle(color: Colors.black26)))
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Icon(
                        Icons.label,
                        color: Colors.black12,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 20),
                        child: Text(
                          'Category',
                          style: TextStyle(color: Colors.black26),
                        ))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: RaisedButton(
                          onPressed: (){

                          },
                          color: Colors.blue,
                          child: Text('Create', style: TextStyle(fontSize: 24, color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
