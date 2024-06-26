import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TasksAssignmentListViewItem extends StatelessWidget{
  const TasksAssignmentListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Card(
            shadowColor: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            ),
            elevation: 3,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'امتحان اللغة العربية',
                        style: GoogleFonts.cairo(
                          fontWeight: FontWeight.w400,
                              fontSize: 22
                        ),
                        ),
                        Text(
                          '13/6/2023',
                          style: GoogleFonts.cairo(
                            fontSize: 12
                          ),
                        ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(''),
                      const Text(''),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/Ellipse29Blue.png',
                            width: 20,
                            height: 12,
                            ),
                          Text(
                            'مكلف بها',
                            style: GoogleFonts.cairo(
                              color: Colors.black,
                              fontSize: 16.11,
                              fontWeight: FontWeight.w400
                            ),
                            ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}