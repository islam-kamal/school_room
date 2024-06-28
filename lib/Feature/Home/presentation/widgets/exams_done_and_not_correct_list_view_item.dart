import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExamsDoneAndNotCorrectListViewItem extends StatelessWidget{
   const ExamsDoneAndNotCorrectListViewItem({
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
                color: const Color(0xffCFCFCF),
              ),
              
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Expanded(
                  flex: 9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 6,
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
                                  'امتحان اللغة العربية',
                                  style: GoogleFonts.cairo(
                                    fontSize: 12
                                    ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                       Expanded(
                        flex: 3,
                        child:Row(
                          children: [
                            Column(
                          children: [
                            const Text(''),
                            const Text(''),
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
                          ],
                        ),
                          SizedBox(
                                width:  MediaQuery.of(context).size.width * sizeBox,
                              ),
                            InkWell(
                              onTap: (){},
                              child: const ImageIcon(
                                AssetImage('assets/images/arrowLeft.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      );
  }
}