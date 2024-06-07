import 'package:flutter/cupertino.dart';
import 'package:school_room/Feature/Chat/presentation/widgets/chats_app_bar.dart';
import 'package:school_room/Feature/Chat/presentation/widgets/chats_list_view_item_widget.dart';
import 'package:school_room/core/utils/index.dart';

class ChatScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: EdgeInsets.only(top: 26,left: 15, right: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ChatsAppBar(),
            Text(
                'المحادثات',
              style: Styles.textStyle22.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context , index){
                  return const ChatsListViewItem();
                }
            ),
          ],
        ),
      ),
    );
  }

}