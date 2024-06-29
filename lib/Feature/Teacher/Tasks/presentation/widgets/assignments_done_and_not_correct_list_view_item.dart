import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Base/common/theme.dart';
import 'package:school_room/Feature/Teacher/Tasks/presentation/widgets/teacher_correct_exam_dialog.dart';

class AssignmentsDoneAndNotCorrectListViewItem extends StatelessWidget{
  const AssignmentsDoneAndNotCorrectListViewItem({
    super.key,
     required this.iconColor,
      required this.status,
       required this.sizeBox
      });

final String iconColor;
final String status;
final double sizeBox;


  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.09,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kLightColor,
              ),
              
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 7,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/Rectangle111.png',
                              width: MediaQuery.of(context).size.width * 0.14,
                              ),
                              SizedBox(
                                width:  MediaQuery.of(context).size.width * 0.014,
                              ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ايمن اشرف',
                                  style: GoogleFonts.cairo(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 23
                                    ),
                                ),
                                Text(
                                  'واجب',
                                  style: GoogleFonts.cairo(
                                    fontSize: 12
                                    ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
/*
                       Expanded(
                        flex: 3,
                        child:Row(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  iconColor,
                                  width: 20,
                                  height: 12,
                                ),
                                Text(
                                  status,
                                  style: GoogleFonts.cairo(
                                      color: Colors.black,
                                      fontSize: 16.11,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          SizedBox(
                                width:  MediaQuery.of(context).size.width * sizeBox,
                              ),
                            InkWell(
                              onTap: (){},
                              child: const Icon(Icons.arrow_forward_ios),

                            ),
                          ],
                        ),
                      ),
*/

                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  iconColor,
                                  width: 20,
                                  height: 12,
                                ),
                                Text(
                                  status,
                                  style: GoogleFonts.cairo(
                                      color: Colors.black,
                                      fontSize: 16.11,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * sizeBox,
                            ),
                            status == 'لم تصحح'   ?  Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return TeacherCorrectExamDailog();
                                      });
                                },
                                child: const Icon(Icons.edit),
                              ),) : Container(),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
        ],
      );
  }
}