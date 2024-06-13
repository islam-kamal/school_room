import 'package:flutter/material.dart';
import 'package:school_room/Feature/Chat/domain/entities/conversation_entity.dart';

class StudentChatsListViewItem extends StatelessWidget{
   const StudentChatsListViewItem({super.key, required this.conversation});

final ConversationsEntity conversation;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            child: Image.asset(
              conversation.image,
              width: MediaQuery.of(context).size.width *0.33,
              height: MediaQuery.of(context).size.height *0.14,
            ),
            ),
            title: Text(conversation.name),
            subtitle: Text(
              conversation.message,
               overflow: TextOverflow.ellipsis,
              ),
            trailing: Column(
              children: [
                Text(conversation.time),
                SizedBox(
                  height: MediaQuery.of(context).size.height *0.01,
                ),
                Badge(
                  backgroundColor: Color(0xff36A690),
                  padding: EdgeInsets.symmetric(horizontal: 6),
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

