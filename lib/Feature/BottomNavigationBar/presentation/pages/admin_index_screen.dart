import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:school_room/Base/common/image_manger.dart';

import 'package:school_room/Feature/Chat/presentation/pages/teacher_chat_screen.dart';
import 'package:school_room/Feature/Home/presentation/pages/home_view.dart';

import '../../../../Base/common/theme.dart';
import '../../../Notifications/presentation/pages/notifications_screen.dart';
import '../../../Profile/presentation/pages/profile_screen.dart';
import '../../../admin/presentation/pages/admin_screen.dart';

class AdminIndexScreen extends StatefulWidget {
  int index;
  AdminIndexScreen({required this.index});
  @override
  State<AdminIndexScreen> createState() => _AdminIndexScreenState();
}

class _AdminIndexScreenState extends State<AdminIndexScreen> {
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
    AdminScreen(),
    TeacherChatScreen(),
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
            child: ImageIcon(AssetImage(ImageAssets.home)),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: ImageIcon(AssetImage(ImageAssets.chat_icon)),
            label: 'Invite Student',
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
