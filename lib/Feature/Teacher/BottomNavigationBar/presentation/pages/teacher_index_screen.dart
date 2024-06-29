import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:school_room/Base/common/image_manger.dart';
import 'package:school_room/Base/common/theme.dart';
import 'package:school_room/Feature/Teacher/Chat/presentation/pages/teacher_chat_screen.dart';

import 'package:school_room/Feature/Teacher/Tasks/presentation/pages/teacher_tasks_screen.dart';
import 'package:school_room/Feature/Teacher/Groups/presentation/pages/teacher_groups_screen.dart';

import '../../../../Teacher/Profile/presentation/pages/profile_screen.dart';

class TeacherIndexScreen extends StatefulWidget {
  int index;
  TeacherIndexScreen({required this.index});

  @override
  State<TeacherIndexScreen> createState() => _TeacherIndexScreenState();
}

class _TeacherIndexScreenState extends State<TeacherIndexScreen> {
  int? current_index;

  @override
  void initState() {
    current_index = widget.index;
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      current_index = index;
    });
  }

  List<Widget> _buildScreens = [
    TeacherGroupsScreen(),
    TeacherChatScreen(),
    TeacherTasksScreen(),
    ProfileScreen()
  ];

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScreens[current_index!],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        items: [
          CurvedNavigationBarItem(
            child: ImageIcon(AssetImage(ImageAssets.groups)),
            label: 'Groups',
          ),
          CurvedNavigationBarItem(
            child: ImageIcon(AssetImage(ImageAssets.chat_icon)),
            label: 'Chat',
          ),

          CurvedNavigationBarItem(
            child: ImageIcon(AssetImage(ImageAssets.tasks)),
            label: 'Tasks',
          ),
          CurvedNavigationBarItem(
            child: ImageIcon(AssetImage(ImageAssets.profile)),
            label: 'Profile',
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: kWhiteColor,
        backgroundColor: kGreenColor,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: _onItemTapped,
        letIndexChange: (index) => true,
      ),
    );
  }

}
