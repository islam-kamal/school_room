import 'package:flutter/material.dart';
import 'package:school_room/Feature/BottomNavigationBar/presentation/pages/father_index_screen.dart';
import 'package:school_room/Feature/BottomNavigationBar/presentation/pages/student_index_screen.dart';
import 'package:school_room/Feature/BottomNavigationBar/presentation/pages/teacher_index_screen.dart';
import 'package:school_room/Feature/admin/presentation/widgets/admin_screen_details_widget.dart';

import 'Feature/BottomNavigationBar/presentation/pages/index_screen.dart';



void main() {
  runApp(const SchoolRoom());
}
GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class SchoolRoom extends StatelessWidget{
  const SchoolRoom({Key?key}) : super(key:key);

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      home:  /*AdminScreenDetails()*/  FatherIndexScreen(index: 0,),
      );
  }
}