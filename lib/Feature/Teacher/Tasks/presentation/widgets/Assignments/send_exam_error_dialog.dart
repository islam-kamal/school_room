import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Base/common/theme.dart';

class SendExamErrorDialog extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        surfaceTintColor: Colors.transparent,
        backgroundColor: kWhiteColor,
        content: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.47,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 22),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                      'assets/images/infoError.png'
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'حدث خطا ما',
                      style: GoogleFonts.cairo(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: GoogleFonts.cairo(
                            fontSize: 24,
                            fontWeight: FontWeight.w300
                        ),
                        backgroundColor: Color(0xffFF0000),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text('اعادة المحاولة'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );

  }

}