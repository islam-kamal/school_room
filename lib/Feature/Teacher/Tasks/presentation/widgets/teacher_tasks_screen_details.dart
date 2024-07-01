import 'package:flutter/material.dart';
import 'package:school_room/Base/common/theme.dart';
import 'package:school_room/Feature/Student/Tasks/presentation/widgets/student_task_assigned_widget.dart';
import 'package:school_room/Feature/Student/Tasks/presentation/widgets/student_task_completed_widget.dart';
import 'package:school_room/Feature/Student/Tasks/presentation/widgets/student_tasks_app_bar.dart';
import 'package:school_room/Feature/Student/Tasks/presentation/widgets/student_task_not_delivered_widget.dart';
import 'package:school_room/Feature/Teacher/Tasks/presentation/widgets/custom_fab.dart';
import 'package:school_room/Feature/Teacher/Tasks/presentation/widgets/degrees_of_exams_widget.dart';
import 'package:school_room/Feature/Teacher/Tasks/presentation/widgets/exams_done_widget.dart';
import 'package:school_room/Feature/Teacher/Tasks/presentation/widgets/exams_not_corrected_widget.dart';
import 'package:school_room/Feature/Teacher/Tasks/presentation/widgets/teacher_tasks_app_bar.dart';

class TeacherTasksScreenDetails extends StatefulWidget{
   TeacherTasksScreenDetails({super.key});

  @override
  State<TeacherTasksScreenDetails> createState() => _TeacherTasksScreenDetailsState();
}

class _TeacherTasksScreenDetailsState extends State<TeacherTasksScreenDetails> {
   int index = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
     child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: TeacherTasksAppBar(),
      ),
      body:  Column(
          children: [

            Container(
              height: 40,
              child: Row(
                children: [
                  Expanded(child:InkWell(
                    onTap: (){
                      setState(() {
                        index =0;
                      });

                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        decoration: BoxDecoration(
                            color: index == 0 ? kBlueColor : kTransparentColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        alignment: Alignment.center,
                        child:  Text('تمت',style: TextStyle(color: index == 0 ? kWhiteColor : kGreyColor),),
                      ),
                    ),
                  )),
                  Expanded(child: InkWell(
                    onTap: (){
                      setState(() {
                        index =1;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: index == 1 ? kRedColor : kTransparentColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child:  Text('لم تصحح',style: TextStyle(color: index == 1 ? kWhiteColor : kGreyColor),),
                      ),
                    ),
                  )),
                  Expanded(child: InkWell(
                    onTap: (){
                      setState(() {
                        index =2;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        decoration: BoxDecoration(
                            color: index == 2 ? kGreenColor : kTransparentColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        alignment: Alignment.center,
                        child:  Text('الدرجات',style: TextStyle(color: index == 2 ? kWhiteColor : kGreyColor),),
                      ),
                    ),)),

                ],
              ),
            ),
            Divider(),

            index == 0 ? Expanded(child: ExamsDone() )
                : index == 1 ?  Expanded(child: ExamsNotCorrect()) : Expanded(child: DegreesOfExams())
          ],
        ),
       floatingActionButton: Padding(
         padding: EdgeInsets.symmetric(horizontal: 10),
         child: CustomExpandableFab(),
       ),
      )

     );
  }
}