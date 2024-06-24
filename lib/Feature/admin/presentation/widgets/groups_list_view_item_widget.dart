import 'package:flutter/material.dart';
import 'package:school_room/Feature/admin/domain/entities/course_entity.dart';
import 'package:school_room/core/utils/styles.dart';

class GroupsListViewItem extends StatelessWidget{
  const GroupsListViewItem({super.key, required this.course});
  
final CourseEntity course;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 6),
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
                  Text(
                    course.subject!,
                    style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    course.level!,
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),
                  ),
                  Row(
                    children: [
                      Text(
                        "${ course.studentNumber!} طالب ",
                        style: Styles.textStyle16,
                      ),
                      Image.asset('assets/images/profile.png')
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width *0.049,
              ),
              Column(
                children: [
                  IconButton(
                    color: Colors.black,
                    onPressed: (){},
                    icon: const Icon(Icons.more_vert),
                  ),
                ],
              ),
            ],
          ),
        )
    ),);
  }
}