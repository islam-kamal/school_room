import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_room/Base/common/theme.dart';
import 'package:school_room/Feature/Father/Chat/domain/entities/coversation_entity.dart';

import '../../../../../Base/utils/styles.dart';
import '../widgets/chats_list_view_item_widget.dart';

class FatherChatScreen extends StatelessWidget{
  final List<ConversationsEntity> conversations = [
    ConversationsEntity(
        image: 'assets/images/Rectangle.png',
        name: 'bcvbcv',
        message: 'xxcxvbcbncv',
        time: '22:6',
        numberMessage: '8'
    ),
    ConversationsEntity(
        image: 'assets/images/Rectangle.png',
        name: 'bcvbcv',
        message: 'xxcxvbcbncv',
        time: '22:6',
        numberMessage: '5'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kAppBarBackgroundColor,
          leading:    Padding(
            padding: EdgeInsets.all(15),
            child: ImageIcon(
              AssetImage('assets/images/search.png',
              ),color: kWhiteColor,
            ) ,
          ),

          actions: [
            Row(
              children: [
                Text(
                  'School-Chat',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,color: kWhiteColor,
                    fontSize: 17
                  ),),
                Image.asset('assets/images/chat_img.png',
                  width: MediaQuery.of(context).size.width *0.13,
                  height: MediaQuery.of(context).size.height *0.14,
                ),


              ],
            )
          ],
        ),
        body:   Padding(
          padding: EdgeInsets.only(top: 26,left: 15, right: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'المحادثات',
                style: Styles.textStyle24.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: conversations.length,
                  itemBuilder: (context , index){
                    return ChatsListViewItem(conversation: conversations[index],);
                  }
              ),
            ],
          ),
        ),
      )

    );
  }

}