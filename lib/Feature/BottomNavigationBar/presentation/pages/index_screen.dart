
import 'package:flutter/material.dart';

import 'package:school_room/Feature/Chat/presentation/pages/chat_screen.dart';
import 'package:school_room/Feature/Home/presentation/pages/home_view.dart';

import '../../../../Base/common/theme.dart';
import '../../../Notifications/presentation/pages/notifications_screen.dart';

class IndexScreen extends StatefulWidget {
  int index;
  IndexScreen({ required this.index});
  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int? current_index ;

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

  List<Widget> _buildScreens =[
    HomeScreen(),
    ChatScreen(),
  NotificationsScreen()

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _buildScreens[current_index!],

      bottomNavigationBar: BottomNavigationBar(
              items:  <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.map_outlined),
                  label: 'home',
                ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person,color: Colors.white,),
                    label: 'chat',
                  ),
               BottomNavigationBarItem(
                 icon: Icon(Icons.person,color: Colors.white,
                 ),
                  label: 'notifications',
                )
              ],
              currentIndex: current_index!,
              selectedItemColor: kWhiteColor,
              onTap: _onItemTapped,
              backgroundColor: kWhiteColor,
              unselectedItemColor: kGreyColor,
              type: BottomNavigationBarType.fixed,
              selectedFontSize: 14.0,
              unselectedFontSize: 14.0,
              showUnselectedLabels: true,

            )

    );
  }




}
