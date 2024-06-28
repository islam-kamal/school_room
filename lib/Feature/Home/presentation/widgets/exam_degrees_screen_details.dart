import 'package:flutter/material.dart';
import 'package:school_room/Feature/Home/presentation/widgets/degrees_of_exams_widget.dart';
import 'package:school_room/Feature/Home/presentation/widgets/exam_degrees_screen_title_app_bar.dart';
import 'package:school_room/Feature/Home/presentation/widgets/exams_done_widget.dart';
import 'package:school_room/Feature/Home/presentation/widgets/exams_not_corrected_widget.dart';
import 'package:school_room/Feature/Home/presentation/widgets/tasks_done_list_view_item.dart';

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