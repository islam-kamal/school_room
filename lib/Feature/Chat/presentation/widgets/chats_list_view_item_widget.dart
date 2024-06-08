import 'package:flutter/material.dart';
import 'package:school_room/Feature/Chat/domain/entities/conversation_entity.dart';

class ChatsListViewItem extends StatelessWidget{
   const ChatsListViewItem({super.key, required this.conversation});

final ConversationsEntity conversation;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            child: Image.asset(
              'assets/images/Rectangle.png',
              width: MediaQuery.of(context).size.width *0.33,
              height: MediaQuery.of(context).size.height *0.14,
            ),
            ),
            title: Text(conversation.name),
            subtitle: Text(conversation.message),
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


// Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         Image.asset(conversation.image,
//           width: MediaQuery.of(context).size.width *0.12,
//           height: MediaQuery.of(context).size.height *0.14,
//         ),

//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//                 conversation.name,
//               style: Styles.textStyle1666,
//             ),
//             Text(
//                conversation.message
//             ),
//           ],
//         ),
//         Column(
//           children: [
//             Text(
//                 conversation.time,
//               style: Styles.textStyle12.copyWith(
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(
//               height: MediaQuery.of(context).size.height *0.011,
//             ),
//             Container(
//               padding: EdgeInsets.only(right: 3,top: 0.8),
//               width: MediaQuery.of(context).size.width *0.044,
//               height: MediaQuery.of(context).size.height *0.021,
//               decoration: BoxDecoration(
//                 color: Color(0xff36A690),
//                     borderRadius: BorderRadius.circular(2),
//               ),
//               child: Text(
//                 conversation.numberMessage,
//                 style: TextStyle(
//                   color: Colors.white
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );