import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Feature/Home/presentation/widgets/assignments_done_and_not_correct_list_view_item.dart';
import 'package:school_room/Feature/Home/presentation/widgets/exams_done_and_not_correct_list_view_item.dart';

class ExamsDone extends StatelessWidget{
  const ExamsDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'الامتحانات',
          style: GoogleFonts.cairo(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
        ),
        ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context , index){
                  return const ExamsDoneAndNotCorrectListViewItem(
                    iconColor: 'assets/images/Ellipse29Blue.png',
                     status: 'تمت',
                     sizeBox: 0.05,
                     );
                }
                ),
                 SizedBox(
                  height:  MediaQuery.of(context).size.height * 0.014,
                ),
                Text(
          'الواجبات',
          style: GoogleFonts.cairo(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
        ),
        ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context , index){
                  return const AssignmentsDoneAndNotCorrectListViewItem(
                    iconColor: 'assets/images/Ellipse29Blue.png',
                     status: 'تمت',
                     sizeBox: 0.05,
                     );
                }
                ),
      ],
    );
  }
}