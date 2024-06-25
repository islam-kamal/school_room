import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Feature/Admin/presentation/widgets/create_course_successfully_dialog.dart';

import '../../../../Base/common/shared.dart';
import '../../../../Base/common/theme.dart';
import 'admin_group_screen_body.dart';

class AddStudentsToCourseDialog extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: kWhiteColor, // Change the background color here
      title: Align(
          alignment: Alignment.centerRight,
          child:  Text(
            'اضافة الطلاب',
            style: GoogleFonts.cairo(),
          )),
      content: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          height: Shared.width ,
          width: Shared.width  ,

          child: AdminGroupScreenBody(),
        )),
      actionsAlignment: MainAxisAlignment.center,
      actions: <Widget>[
        OutlinedButton(onPressed: (){
          Navigator.pop(context);
        },
          child:const Text(
            'الغاء',
            style: TextStyle(color: kBlackColor),
          ),
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            side: BorderSide(width: 2, color: kBlackColor),
          ),


        ),
        OutlinedButton(
          onPressed: (){
             Navigator.pop(context);
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return CreateCourseSuccessfullyDialog(
                  message: 'تم أضافة الطلاب',
                );
              },
            );

          },
          child:const Text('أنشاء',style: TextStyle(color: kWhiteColor),),
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),

            ),backgroundColor: kGreenColor,
            side: BorderSide(width: 2, color: kGreenColor),
          ),


        )

      ],
    );
  }

}