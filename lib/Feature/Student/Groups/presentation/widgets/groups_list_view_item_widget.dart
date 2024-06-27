import 'package:flutter/material.dart';
import 'package:school_room/Base/common/theme.dart';
import 'package:school_room/Feature/Student/Chat/domain/entities/coversation_entity.dart';

class GroupsListViewItem extends StatelessWidget{
  const GroupsListViewItem({super.key, required this.conversation});

  final ConversationsEntity conversation;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          leading: CircleAvatar(
            child: Image.asset(
              'assets/images/Rectangle.png',
              width: MediaQuery.of(context).size.width *0.33,
            ),
          ),
          title: Text(conversation.name),
          subtitle: Text(conversation.message,style: TextStyle(color: kBlueColor),),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(conversation.time),
              SizedBox(
                height: MediaQuery.of(context).size.height *0.01,
              ),
              Badge(
                backgroundColor: kBlueColor,
                padding: EdgeInsets.symmetric(horizontal: 5),
                label: Text(conversation.numberMessage),
                largeSize: 19,

              ),
            ],
          ),
        ),
      ],
    );
  }
}


