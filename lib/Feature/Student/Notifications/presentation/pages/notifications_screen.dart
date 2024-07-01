import 'package:flutter/material.dart';
import 'package:school_room/Feature/Father/Notifications/presentation/widgets/notifications_list_view_item_widget.dart';
import 'package:school_room/Feature/Student/BottomNavigationBar/presentation/pages/student_index_screen.dart';
import 'package:school_room/Feature/Student/Home/presentation/widgets/student_exams_and_groups_screen_details.dart';
import 'package:school_room/core/utils/index.dart';

import '../../../../../Base/common/navigtor.dart';

class NotificationsScreen extends StatelessWidget{
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 44,left: 11, right: 11),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.11,
                    height: MediaQuery.of(context).size.height * 0.0011,
                  ),
                  Text(
                    'الاشعارات',
                    style: Styles.textStyle16.copyWith(
                        fontSize: 28.2,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  IconButton(
                    color: Colors.black,
                    onPressed: (){
                      customAnimatedPushNavigation(context, StudentIndexScreen(index: 0));

                    },
                    icon: const Icon(Icons.arrow_forward),
                  ),
                ],
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context , index){
                    return const NotificationListViewItem();
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }

}