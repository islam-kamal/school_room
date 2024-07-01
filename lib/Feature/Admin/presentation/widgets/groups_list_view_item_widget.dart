import 'package:flutter/material.dart';
import 'package:school_room/Base/common/navigtor.dart';
import 'package:school_room/Feature/Admin/domain/entities/course_entity.dart';
import 'package:school_room/core/utils/styles.dart';

import '../pages/admin_group_screen.dart';
import 'add_students_to_course_Dialog.dart';

class GroupsListViewItem extends StatelessWidget{
  const GroupsListViewItem({super.key, required this.course});
  
final CourseEntity course;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        customAnimatedPushNavigation(context, AdminGroupScreen());
      },
     child: Padding(padding: EdgeInsets.symmetric(vertical: 6),
         child: Container(
             width: double.infinity,
             height: MediaQuery.of(context).size.height *0.154,
             decoration: BoxDecoration(
               color: Color(0xFFCDCDCF),
               borderRadius: BorderRadius.circular(6),
             ),
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(padding: EdgeInsets.symmetric(vertical: 3),
                         child: Text(
                           course.subject!,
                           style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
                         ),),
                       Padding(padding: EdgeInsets.symmetric(vertical: 3),
                           child:  Text(
                             course.level!,
                             style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),
                           ) ),
                       Padding(padding: EdgeInsets.symmetric(vertical: 3),
                           child:   Row(
                             children: [
                               Text(
                                 "${ course.studentNumber!} طالب ",
                                 style: Styles.textStyle16,
                               ),
                               Icon(Icons.person_outline_outlined)
                             ],
                           ) ),
                     ],
                   ),
                   SizedBox(
                     width: MediaQuery.of(context).size.width *0.049,
                   ),
                   Column(
                     children: [
                       IconButton(
                         color: Colors.black,
                         onPressed: (){
                           showDialog(
                             context: context,
                             builder: (BuildContext context) {
                               return  AddStudentsToCourseDialog();
                             },
                           );

                         },
                         icon: const Icon(Icons.more_vert),
                       ),
                     ],
                   ),
                 ],
               ),
             )
         ),
    ));
  }
}