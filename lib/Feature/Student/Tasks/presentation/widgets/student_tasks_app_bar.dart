import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_room/Base/common/theme.dart';

class StudentTasksAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("المهام",),
      centerTitle: true,
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: kWhiteColor,
        ),
        child: Icon(Icons.arrow_back),
      ),


    );
  }

}
