import 'package:flutter/cupertino.dart';
import 'package:school_room/Feature/Chat/domain/entities/conversation_entity.dart';
import 'package:school_room/Feature/Chat/presentation/widgets/chats_app_bar.dart';
import 'package:school_room/Feature/Chat/presentation/widgets/chats_list_view_item_widget.dart';
import 'package:school_room/core/utils/index.dart';

class ChatScreen extends StatelessWidget{
 ChatScreen({super.key});
 
final List<ConversationsEntity> conversations = [
   ConversationsEntity(
    image: 'assets/images/Rectangle.png',
     name: 'أ/ احمد محمد',
      message: 'اشكرك كثيرا! ,أتمنى لك يوماً عظيماً! ,😊',
       time: '10:25',
        numberMessage: '5'
        ),
  ConversationsEntity(
    image: 'assets/images/Avatar.png',
     name: 'أ/محمود محمد',
      message: 'عظيم، شكرا جزيلا! ,💫',
       time: '22:20',
        numberMessage: '12'
        ),
         ConversationsEntity(
    image: 'assets/images/Rectangleee22.png',
     name: 'أ/مريم احمد',
      message: 'نقدر ذلك! ,اراك قريبا! ,🚀',
       time: '10:45',
        numberMessage: '1'
        ),
];

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: EdgeInsets.only(top: 26,left: 15, right: 6),
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
            Expanded(
              child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: conversations.length,
                            itemBuilder: (context , index){
                              return  ChatsListViewItem(conversation: conversations[index],);
                            }
                        ),
            )
            ,
          ],
        ),
      ),
    );
  }

}