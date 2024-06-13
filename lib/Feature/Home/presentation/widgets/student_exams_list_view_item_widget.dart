import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentExamsListViewItem extends StatelessWidget{
  const StudentExamsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
     return Column(
            children: [
              Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.093,
        decoration: BoxDecoration(
              color: const Color.fromARGB(255, 201, 197, 197),
              borderRadius: BorderRadius.circular(8)
        ),
        child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'اللغة العربية',
                        style: GoogleFonts.cairo(
                          fontSize: 23.3,
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,),
                    child: Column(
                      children: [
                        Text(
                          'الدرجة',
                          style: GoogleFonts.cairo(
                            fontSize: 16.11
                          ),
                          ),
                          Row(
                            children: [
                              Text(
                                '20',
                                style: GoogleFonts.cairo(
                                  fontSize: 15.86,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1FBF83)
                                ),
                                ),
                                Text(
                                '/25',
                                style: GoogleFonts.cairo(
                                  fontSize: 15.86,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                            ],
                          ),
                          
                      ],
                    ),
                  )
                ],
              ),
        ),
      ),
        SizedBox(
      height: MediaQuery.of(context).size.height * 0.01,
    ),
            ],
          );
}
}