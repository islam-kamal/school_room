import 'package:flutter/material.dart';
import 'package:school_room/Feature/BottomNavigationBar/presentation/pages/index_screen.dart';
import 'package:school_room/Feature/Home/presentation/pages/home_view.dart';



void main() {
  runApp(const SchoolRoom());
}
class SchoolRoom extends StatelessWidget{
  const SchoolRoom({Key?key}) : super(key:key);

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IndexScreen(index: 0,),
      );
  }
}