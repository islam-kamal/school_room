import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_room/Base/common/navigtor.dart';
import 'package:school_room/Feature/Father/BottomNavigationBar/presentation/pages/father_index_screen.dart';
import 'package:school_room/Feature/Student/BottomNavigationBar/presentation/pages/student_index_screen.dart';
import 'package:school_room/Feature/Teacher/BottomNavigationBar/presentation/pages/teacher_index_screen.dart';

import 'Feature/Admin/presentation/pages/admin_screen.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? _selectedItem;

  final List<String> _dropdownItems = ['Admin', 'Father', 'Student', 'Teacher'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class Room'),
      ),
      body: Center(
        child: DropdownButton<String>(
          hint: Text('Select an item'),
          value: _selectedItem,
          onChanged: (String? newValue) {
            setState(() {
              _selectedItem = newValue;
            });
            switch(_selectedItem){
              case 'Admin':
                customAnimatedPushNavigation(context, AdminScreen());
                break;
              case 'Father':
                customAnimatedPushNavigation(context, FatherIndexScreen(index: 0));

                break;
              case 'Student':
                customAnimatedPushNavigation(context, StudentIndexScreen(index: 0));

                break;
              case 'Teacher':
                customAnimatedPushNavigation(context, TeacherIndexScreen(index: 0));

                break;
            }
          },
          items: _dropdownItems.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}