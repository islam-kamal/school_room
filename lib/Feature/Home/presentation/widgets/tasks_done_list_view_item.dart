import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TasksDoneListViewItem extends StatelessWidget {
  const TasksDoneListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Card(
            shadowColor: Colors.grey,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            elevation: 3,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Expanded(
                flex: 6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Column(
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
                            style: GoogleFonts.cairo(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          const Text(''),
                          const Text(''),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/Ellipse_trcwas.png',
                                width: 20,
                                height: 12,
                              ),
                              Text(
                                'تمت',
                                style: GoogleFonts.cairo(
                                    color: Colors.black,
                                    fontSize: 16.11,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'الدرجة',
                            style: GoogleFonts.cairo(
                              color: Colors.black,
                              fontSize: 16.11,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '20',
                                style: GoogleFonts.cairo(
                                  color: const Color(0xff1FBF83),
                                  fontSize: 15.86,
                                  fontWeight: FontWeight.bold
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
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
