import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Feature/Home/domain/entities/assignment_entity.dart';
import 'package:school_room/Feature/Home/presentation/widgets/student_assignments_widget.dart';
import 'package:school_room/Feature/Home/presentation/widgets/student_exams_app_bar_widget.dart';
import 'package:school_room/Feature/Home/presentation/widgets/student_exams_list_view_item_widget.dart';
import 'package:school_room/Feature/Home/presentation/widgets/student_exams_widget.dart';
import 'package:school_room/Feature/Home/presentation/widgets/student_groups_list_view_item_widget.dart';

class StudentExamsAndGroupsScreenDetails extends StatelessWidget{
   StudentExamsAndGroupsScreenDetails({super.key});

final List<AssignmentEntity> assignments = [
  AssignmentEntity(
    subject: 'اللغة العربية' ,
     name: 'أ/ وائل منصور' ,
      status: 'تم تسليم الواجب هذا للاسبوع ' ,
       statusSign: 'assets/images/trueeeee.png' ,
        color: Colors.amber
        ),
        AssignmentEntity(
    subject: 'رياضيات' ,
     name: 'أ/ وائل منصور' ,
      status: 'لم يتم تسليم الواجب هذا للاسبوع ' ,
       statusSign: 'assets/images/closeeeee-circle.png' ,
        color: Color.fromARGB(255, 184, 177, 227)
        ),
        AssignmentEntity(
    subject: 'اللغة الانجليزية' ,
     name: 'أ/ وائل منصور' ,
      status: 'تم تسليم الواجب هذا للاسبوع ' ,
       statusSign: 'assets/images/trueeeee.png' ,
        color: Color.fromARGB(255, 215, 199, 207)
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8 , vertical: 11),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StudentExams(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const StudentAssignments(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                 Text(
                  'الامتحانات',
                  style: GoogleFonts.cairo(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  )
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return const StudentExamsListViewItem();
                    },
                    ),
                  SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                  Text(
                    'المجموعات/ الواجبات',
                    style: GoogleFonts.cairo(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                    return  StudentGroupsListViewItem(assignment: assignments[index],);
    },
    ),
],
          ),
        ),
      ),
    ),
    );
    }
}