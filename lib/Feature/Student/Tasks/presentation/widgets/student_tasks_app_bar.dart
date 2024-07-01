import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_room/Base/common/theme.dart';

class StudentTasksAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("المهام",),
      automaticallyImplyLeading: false,
      centerTitle: true,

    );
  }

}
