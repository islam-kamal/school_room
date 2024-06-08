import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentTasksScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _Page();
  }

}

class _Page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PageState();
  }

}

class _PageState extends State<_Page>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("StudentTasksScreen"),
      ),
    );
  }

}