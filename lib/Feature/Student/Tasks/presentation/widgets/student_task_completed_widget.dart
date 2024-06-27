import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentTaskCompletedWidget extends StatelessWidget {
  const StudentTaskCompletedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Card(
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 3,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                  child: Row(
                    children: [
                    Expanded(
                        flex: 2,
                        child:   Column(
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
                          style: GoogleFonts.cairo(fontSize: 12),
                        ),
                      ],
                    )),
                      Expanded(
                          flex: 1,
                          child:   Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                ),
                                child:      Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/Ellipse_trcwas.png',
                                        width: 20,
                                        height: 10,
                                      ),
                                      const Text(
                                        'تمت',
                                      ),
                                    ]
                                )
                            ),
                          ),
                  Expanded(
                    flex: 1,
                    child:   Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'الدرجة',
                              style: GoogleFonts.cairo(fontSize: 16.11),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '20',
                                  style: GoogleFonts.cairo(
                                      fontSize: 15.86,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff1FBF83)),
                                ),
                                Text(
                                  '/25',
                                  style: GoogleFonts.cairo(
                                      fontSize: 15.86,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
            ],
          );
        });
  }
}
