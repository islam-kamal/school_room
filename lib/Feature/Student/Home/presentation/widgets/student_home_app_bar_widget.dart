import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:school_room/Feature/Student/Notifications/presentation/pages/notifications_screen.dart';

import '../../../../../Base/common/navigtor.dart';

class StudentHomeAppBar extends StatelessWidget implements PreferredSizeWidget{

  @override
  final Size preferredSize;

  StudentHomeAppBar({Key? key})
      : preferredSize = Size.fromHeight(65),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      toolbarHeight: MediaQuery.of(context).size.height * 0.08,
      backgroundColor: Colors.white,
      title:Row(
        children: [
          Image.asset(
            'assets/images/Rectangleee22.png',
            width: MediaQuery.of(context).size.width * 0.12,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.024,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ايمن احمد',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),
              ),
              Text(
                'الصف الثالث المتوسط (3/1)',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
      actions:  [
        InkWell(
          onTap: (){
            customAnimatedPushNavigation(context, NotificationsScreen());
          },
          child: Padding(
            padding: EdgeInsets.all(22),
            child: ImageIcon(
              AssetImage(
                  'assets/images/notificationbing.png'
              ),
            ),
          ),
        )
      ],
    );
  }
}