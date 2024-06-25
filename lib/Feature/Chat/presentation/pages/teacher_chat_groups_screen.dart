import 'package:flutter/material.dart';
import 'package:school_room/Feature/Chat/presentation/widgets/teacher_chat_groups_actions_app_bar_widget.dart';
import 'package:school_room/Feature/Chat/presentation/widgets/teacher_chat_groups_text_field_widget.dart';
import 'package:school_room/Feature/Chat/presentation/widgets/teacher_chat_groups_title_app_bar_widget.dart';

class TeacherChatGroupsScreen extends StatelessWidget{
  const TeacherChatGroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.15,
          elevation: 0,
          backgroundColor: Colors.white,
          title: const TeacherChatGroupsTitleAppBar(),
          actions: const [
            TeacherChatGroupsActionsAppBar(),
          ],
        ),
       body: Padding(
         padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
         child: Column(
          children: [
           Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: 11,
             itemBuilder: (context, index) {
               return Row(
                  mainAxisAlignment: index % 2 == 0 ? MainAxisAlignment.end : MainAxisAlignment.start,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                           bottomLeft: Radius.circular(index % 2 == 0 ? 0 : 16 ),
                            bottomRight: Radius.circular(index % 2 == 0 ? 16 : 0),
                             topLeft: const Radius.circular(16),
                              topRight: const Radius.circular(16)
                        )
                      ),
                      color: index % 2 == 0 ? const Color(0xff042F40) : Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.sizeOf(context).width / 2,    // -40  حسب padding
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                               'كنت اريد ان اسألك بعض الاسئلة الخاصة بالواجب المنزلي اليوم ,😊',
                                style: TextStyle(
                                  color: index % 2 == 0 ? Colors.white : Colors.black
                                ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.004,
                                ),
                              Text(
                                '10:12 pm',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: index % 2 == 0 ? Colors.white : Colors.black
                                ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                );
             },
            )
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.003,
            ),
            const TeacherChatGroupsTextField(),
          ],
         ),
       ),
        ),
      );
  }
}