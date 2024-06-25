import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Feature/Student/Home/domain/entities/assignment_entity.dart';

class StudentGroupsListViewItem extends StatelessWidget {
  const StudentGroupsListViewItem({super.key, required this.assignment});

  final AssignmentEntity assignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.135,
          decoration: BoxDecoration(
              color: assignment.color!,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      assignment.subject!,
                      style: GoogleFonts.cairo(
                        fontSize: 23.3,
                      ),
                    ),
                    Text(
                      assignment.name!,
                      style: GoogleFonts.cairo(
                        fontSize: 15.55,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          assignment.status!,
                          style: GoogleFonts.cairo(
                            fontSize: 13.5,
                          ),
                        ),
                        Image.asset(assignment.statusSign!)
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 11),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'ارفاق ملف',
                          style: GoogleFonts.cairo(
                            fontSize: 13.5,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.003,
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: ImageIcon(
                            color: Colors.black,
                            AssetImage(
                              'assets/images/link.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 11),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'الرسائل',
                        style: GoogleFonts.cairo(
                          fontSize: 13.5,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.00,
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: ImageIcon(
                          color: Colors.black,
                          AssetImage(
                            'assets/images/message.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.015,
        ),
      ],
    );
  }
}
