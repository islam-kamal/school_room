import 'package:flutter/material.dart';
import 'package:school_room/Feature/admin/domain/entities/course_entity.dart';
import 'package:school_room/core/utils/styles.dart';

class GroupsListViewItem extends StatelessWidget{
  const GroupsListViewItem({super.key, required this.course});
final CourseEntity course;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height *0.007,
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height *0.154,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(6),
          ),
            child: Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          course.subject! ?? '',
                        style: Styles.textStyle16,
                      ),
                      Text(
                          course.level! ?? '',
                        style: Styles.textStyle14,
                      ),
                      Row(
                        children: [
                          Text(
                              course.studentNumber! ?? '',
                            style: Styles.textStyle22,
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
        ),
      ],
    );
  }
}