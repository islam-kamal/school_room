import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentTaskAssignedWidget extends StatelessWidget {
  StudentTaskAssignedWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: Column(
              children: [
                Card(
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 3,
                  color: Colors.white,
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'واجب اللغة العربية',
                              style: GoogleFonts.cairo(fontSize: 23.3),
                            ),
                            Text(
                              '13/6/2023',
                              style: GoogleFonts.cairo(fontSize: 12),
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
                                  height: 10,
                                ),
                                const Text(
                                  'مكلف بها',
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
        });
  }
}
