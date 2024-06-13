import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Feature/Chat/domain/entities/conversation_entity.dart';
import 'package:school_room/Feature/Chat/presentation/widgets/student_chats_list_view_item.dart';
import 'package:school_room/Feature/Home/presentation/widgets/student_exams_app_bar_widget.dart';

class StudentConversationsScreenDetails extends StatelessWidget{
  StudentConversationsScreenDetails({super.key});

final List<ConversationsEntity> conversations = [
   ConversationsEntity(
    image: 'assets/images/Rectangle.png',
     name: 'أ/ احمد محمد',
      message: 'اشكرك كثيرا! ,أتمنى لك يوماً عظيماً! ,😊',
       time: '10:25',
        numberMessage: '5'
        ),
  ConversationsEntity(
    image: 'assets/images/Rectangle111.png',
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
        ConversationsEntity(
    image: 'assets/images/Rectangle111.png',
     name: 'أ/محمود محمد',
      message: 'عظيم، شكرا جزيلا! ,💫',
       time: '22:20',
        numberMessage: '12'
        ),
        ConversationsEntity(
    image: 'assets/images/Rectangle.png',
     name: 'أ/ احمد محمد',
      message: 'اشكرك كثيرا! ,أتمنى لك يوماً عظيماً! ,😊',
       time: '10:25',
        numberMessage: '5'
        ),
];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: MediaQuery.of(context).size.height * 0.08,
          backgroundColor: Colors.white,
          title: const StudentExamsAppBar(),
          actions: const [
            Padding(
              padding: EdgeInsets.all(22),
              child: ImageIcon(
                AssetImage(
                  'assets/images/notification-bing.png'
                  ),
              ),
            ),
          ],
        ),
          body: Padding(
            padding: const EdgeInsets.all(8),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'المحادثات',
                    style: GoogleFonts.cairo(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                ),
                ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: conversations.length,
                            itemBuilder: (context , index){
                              return  StudentChatsListViewItem(conversation: conversations[index],);
                            }
                        ),
              ],
            ),
          ),
      ),
    );
  }
}