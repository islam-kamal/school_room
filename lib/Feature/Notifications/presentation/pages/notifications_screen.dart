import 'package:flutter/material.dart';
import 'package:school_room/Feature/Notifications/presentation/widgets/notifications_list_view_item_widget.dart';
import 'package:school_room/core/utils/index.dart';

class NotificationsScreen extends StatelessWidget{
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    fontSize: 38.2,
                  ),
                  ),
                 IconButton(
                  color: Colors.black,
                  onPressed: (){},
                   icon: const Icon(Icons.more_vert),
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
    );
  }

}