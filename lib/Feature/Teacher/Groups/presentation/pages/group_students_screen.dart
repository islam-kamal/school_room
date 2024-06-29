import 'package:flutter/material.dart';
import 'package:school_room/Base/common/navigtor.dart';
import 'package:school_room/Feature/Admin/presentation/pages/admin_screen.dart';
import 'package:school_room/Feature/Teacher/Groups/presentation/pages/teacher_group_conversation_screen.dart';
import 'package:school_room/Feature/Teacher/Groups/presentation/pages/teacher_groups_screen.dart';
import 'package:school_room/Feature/admin/presentation/widgets/admin_group_screen_body.dart';

class GroupStudentsScreen extends StatelessWidget{
   const GroupStudentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
       child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 120,
          backgroundColor: Colors.white,
          elevation: 0,
          leading:  Padding(
            padding: EdgeInsets.all(12),
            child: Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: (){
                  customAnimatedPushNavigation(context, TeacherGroupConversationScreen());
                },
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: ImageIcon(
                    color: Colors.black,
                    AssetImage(
                      'assets/images/icon_back.png',
                    ),
                  ),
                ),
              ),
            ),
          ),
          centerTitle: true,
          title: Column(
            children: [
              const Text(
                'طلاب المجموعة',
                style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500
                    ),
                ),
                SizedBox(
                  height: 11,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'فصل 3/1 المتوسط',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Image.asset(
                      'assets/images/edit-2.png',
                      width: MediaQuery.of(context).size.width * 0.06,
                      ),
                ],
              ),
              const Opacity(
                opacity: 0.5,
                child: Text(
                  '15 طالب',
                  style: TextStyle(
                    fontSize: 12
                  ),
                  ),
              )
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(12),
              child: Align(
                alignment: Alignment.topLeft,
                child: ImageIcon(
                      AssetImage('assets/images/threePoints.png')
                              ),
      ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: AdminGroupScreenBody()
          ),
       ),
       );
  }
}