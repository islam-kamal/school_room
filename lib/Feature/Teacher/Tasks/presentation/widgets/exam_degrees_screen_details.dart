import 'package:flutter/material.dart';
import 'package:school_room/Feature/Teacher/Tasks/presentation/widgets/degrees_of_exams_widget.dart';
import 'package:school_room/Feature/Teacher/Tasks/presentation/widgets/exam_degrees_screen_title_app_bar.dart';


class ExamDegreesScreenDetails extends StatelessWidget{
  const ExamDegreesScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
       child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(top: 18),
            child: ExamDegreesScreenTitleAppBar(),
          ),
        ),
        body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              DegreesOfExams(),
              // ExamsNotCorrect(),
              // ExamsDone(),
            ],
          ),
        ),
      ),
       ),
       );
  }
}