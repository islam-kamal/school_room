import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_room/Base/common/theme.dart';
import 'package:school_room/Feature/Teacher/Chat/domain/entities/coversation_entity.dart';
import 'package:school_room/Feature/Teacher/Groups/presentation/widgets/groups_list_view_item_widget.dart';

import '../../../../../Base/utils/styles.dart';


class TeacherGroupsScreen extends StatelessWidget{
  final List<ConversationsEntity> conversations = [
    ConversationsEntity(
        image: 'assets/images/course.png',
        name: 'فصل 3/1 المتوسط',
        message: 'اشكرك كثيرا! ,أتمنى لك يوماً عظيماً! ,😊',
        time: '20:6',
        numberMessage: '15'
    ),
    ConversationsEntity(
        image: 'assets/images/course.png',
        name: 'فصل 3/3 المتوسط',
        message: 'نقدر ذلك! ,اراك قريبا! ,🚀',
        time: '12:6',
        numberMessage: '45'
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
                'المجموعات',
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
                    return GroupsListViewItem(conversation: conversations[index],);
                  }
              ),
            ],
          ),
        ),
      )

    );
  }

}