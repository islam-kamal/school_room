import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_room/Feature/Student/Tasks/presentation/widgets/tasks_screen_details.dart';
import 'package:school_room/Feature/Teacher/Tasks/presentation/widgets/teacher_tasks_screen_details.dart';

class TeacherTasksScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
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
    return  TeacherTasksScreenDetails();
  }

}