import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DegreesListViewItem extends StatelessWidget{
  const DegreesListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.09,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(255, 224, 222, 222),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Expanded(
                  flex: 7,
                  child: Row(
                    children: [
                      Expanded(
                      flex: 1,
                      child: Image.asset(
                        'assets/images/Rectangle111.png',
                        //  width: MediaQuery.of(context).size.width * 0.14,
                         height: MediaQuery.of(context).size.height * 0.055,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Text(
                        'ايمن اشرف',
                        style: GoogleFonts.cairo(
                          fontSize: 23.27,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                     Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                            mainAxisAlignment: MainAxisAlignment.start,
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
    );
  }
}