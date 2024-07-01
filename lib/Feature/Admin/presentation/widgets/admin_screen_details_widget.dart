import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Base/common/theme.dart';
import 'package:school_room/Feature/Admin/domain/entities/course_entity.dart';
import 'package:school_room/Feature/admin/presentation/widgets/admin_app_bar.dart';
import 'package:school_room/Feature/admin/presentation/widgets/groups_list_view_item_widget.dart';

import '../../../../Base/common/shared.dart';
import '../../../../core/utils/styles.dart';
import 'create_course_alertDialog.dart';
import 'create_course_successfully_dialog.dart';

class AdminScreenDetails extends StatelessWidget{
   AdminScreenDetails({super.key});
final List<CourseEntity> courses = [
  CourseEntity('مجموعة اللغة العربية', 'الصف الثالث المتوسط (3/4)', '20'),
  CourseEntity('مجموعة الرياضيات ', 'الصف الثالث المتوسط (3/4)', '27'),
  CourseEntity('مجموعة اللغة الانجليزية', 'الصف الثالث المتوسط (3/4)', '24'),
  CourseEntity('مجموعة العلوم', 'الصف الثالث المتوسط (3/4)', '33'),
];
  @override
  Widget build(BuildContext context) {
    return  Directionality(
        textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AdminAppBar(),
        body:  Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
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
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return CreateCourseAlertDialog();
              },
            );
            },
          backgroundColor: kGreenColor,
          tooltip: 'انشاء مجموعة',
          elevation: 5,
          splashColor: Colors.grey,
          child: const Icon(Icons.add, color: kWhiteColor, size: 29,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }
}


