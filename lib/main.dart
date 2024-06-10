import 'package:flutter/material.dart';
import 'package:school_room/Feature/BottomNavigationBar/presentation/pages/index_screen.dart';
import 'package:school_room/Feature/Chat/presentation/pages/teacher__conversations_screen.dart';
import 'package:school_room/Feature/Chat/presentation/pages/teacher_groups_screen.dart';
import 'package:school_room/Feature/admin/presentation/pages/admin_profile_screen.dart';
import 'package:school_room/Feature/admin/presentation/pages/admin_screen.dart';
import 'package:school_room/Feature/admin/presentation/pages/admin_group_screen.dart';
import 'package:school_room/Feature/admin/presentation/widgets/admin_screen_details_widget.dart';



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
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black  //here you can give the text color
          )
     ),
      home: AdminScreen(),         //AdminProfileScreen(),        //TeacherGroupsScreen(), //TeacherConversationsScreen(), // StudentsGroupScreen(), //AdminScreen(), //IndexScreen(index: 0,) 
      );
  }
}