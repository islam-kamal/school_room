import 'package:flutter/material.dart';
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
      home:  AdminScreenDetails() // IndexScreen(index: 0,),
      );
  }
}