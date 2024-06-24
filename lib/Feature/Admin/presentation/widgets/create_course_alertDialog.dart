import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Feature/Admin/presentation/widgets/create_course_successfully_dialog.dart';

import '../../../../Base/common/shared.dart';
import '../../../../Base/common/theme.dart';

class CreateCourseAlertDialog extends StatelessWidget{
  TextEditingController _courseNameFieldController = TextEditingController();
  TextEditingController _courseDescriptionFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: kWhiteColor, // Change the background color here
      title: Align(
          alignment: Alignment.centerRight,
          child:  Text(
            'ادخل اسم المجموعة',
            style: GoogleFonts.cairo(),
          )),
      content: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          height: Shared.width * 0.5,
          width: Shared.width  ,

          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: kInactiveColor,
                    border: Border.all(color: kInactiveColor),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextFormField(
                    controller: _courseNameFieldController,
                    decoration: InputDecoration(
                        labelText: 'اسم المجموعة',
                        labelStyle: TextStyle(color: kGreyColor),
                        border: InputBorder.none),

                  ),
                ),),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: kInactiveColor,
                    border: Border.all(color: kInactiveColor),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextFormField(
                    controller: _courseDescriptionFieldController,
                    decoration: InputDecoration(
                        labelText: 'وصف المجموعة',
                        labelStyle: TextStyle(color: kGreyColor,),
                        border: InputBorder.none),

                  ),
                ),)
            ],
          ),
        ),
      ),
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
                return CreateCourseSuccessfullyDialog();
              },
            );

          },
          child:const Text('التالي',style: TextStyle(color: kWhiteColor),),
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