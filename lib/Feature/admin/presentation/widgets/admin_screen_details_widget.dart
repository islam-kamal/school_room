import 'package:flutter/material.dart';
import 'package:school_room/Feature/admin/domain/entities/course_entity.dart';
import 'package:school_room/Feature/admin/presentation/widgets/admin_app_bar.dart';
import 'package:school_room/Feature/admin/presentation/widgets/groups_list_view_item_widget.dart';

class AdminScreenDetails extends StatelessWidget{
   AdminScreenDetails({super.key});
final List<CourseEntity> courses = [
  CourseEntity('Arabic', 'tow', '20'),
  CourseEntity('English', 'for', '27'),
  CourseEntity('Math', 'five', '24'),
  CourseEntity('Arabic', 'tow', '33')
];
  @override
  Widget build(BuildContext context) {
    return  Directionality(
        textDirection: TextDirection.rtl,
      child: Scaffold(
        body:  Padding(
          padding: EdgeInsets.only(top: 44,left: 4, right: 6),
          child: Column(
            children: [
              AdminAppBar(),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: courses.length,
                  itemBuilder: (context , index){
                    return  GroupsListViewItem(course: courses[index],);
                  }
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(

          onPressed: () {},
          child: Icon(Icons.add, color: Colors.black, size: 29,),
          backgroundColor: Colors.white,
          tooltip: 'انشاء مجموعة',
          elevation: 5,
          splashColor: Colors.grey,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }
}