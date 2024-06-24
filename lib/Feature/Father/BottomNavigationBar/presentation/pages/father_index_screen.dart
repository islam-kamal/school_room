import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:school_room/Base/common/image_manger.dart';
import 'package:school_room/Feature/Father/Chat/presentation/pages/chat_screen.dart';
import 'package:school_room/Feature/Father/Home/presentation/pages/pages/home_view.dart';
import 'package:school_room/Feature/Father/Notifications/presentation/pages/notifications_screen.dart';
import 'package:school_room/Feature/Father/Profile/presentation/pages/profile_screen.dart';
import '../../../../../Base/common/theme.dart';


class FatherIndexScreen extends StatefulWidget {
  int index;
  FatherIndexScreen({required this.index});

  @override
  State<FatherIndexScreen> createState() => _FatherIndexScreenState();
}

class _FatherIndexScreenState extends State<FatherIndexScreen> {
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
    HomeScreen(),
    ChatScreen(),
    NotificationsScreen(),
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
            child: ImageIcon(AssetImage(ImageAssets.notification)),
            label: 'Notifications',
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
