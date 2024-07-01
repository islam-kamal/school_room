import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Base/common/theme.dart';

class SendExamSuccessfullyDialog extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        surfaceTintColor: Colors.transparent,
        backgroundColor: kWhiteColor,
        content: Container(
          width: double.infinity,
        //  height: MediaQuery.of(context).size.height * 0.35,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: SingleChildScrollView(
              child: Column(
                children: [
              SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.5,
              child:   Image.asset(
                      'assets/images/succes-validation-nxPvtk8St9.png'
              ) ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'تم ارسال الامتحان بنجاح',
                      style: GoogleFonts.cairo(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: GoogleFonts.cairo(
                            fontSize: 24,
                            fontWeight: FontWeight.w300
                        ),
                        backgroundColor: kGreenColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text('تم',style: TextStyle(color: kWhiteColor),),
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