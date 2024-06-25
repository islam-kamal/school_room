import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Feature/Admin/presentation/widgets/add_student_image_widget.dart';
import 'package:school_room/Feature/Admin/presentation/widgets/create_course_successfully_dialog.dart';
import 'package:school_room/Feature/Admin/presentation/widgets/image_of_profile_widget.dart';

import '../../../../Base/common/shared.dart';
import '../../../../Base/common/theme.dart';

class AddStudentDataDialog extends StatelessWidget {
  TextEditingController _studentNameFieldController = TextEditingController();
  TextEditingController _studentEmailFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: kWhiteColor, // Change the background color here
      title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'ادخل بيانات الطالب',
            style: GoogleFonts.cairo(),
          )),
      content: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          height: Shared.width ,
          width: Shared.width,
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: const AddStudentImageWidget()),
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
                    controller: _studentNameFieldController,
                    decoration: InputDecoration(
                        labelText: 'اسم الطالب',
                        labelStyle: TextStyle(color: kGreyColor),
                        border: InputBorder.none),
                    keyboardType: TextInputType.name,
                  ),
                ),
              ),
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
                    controller: _studentEmailFieldController,
                    decoration: InputDecoration(
                        labelText: 'ايميل الطالب',
                        labelStyle: TextStyle(
                          color: kGreyColor,
                        ),
                        border: InputBorder.none),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: <Widget>[
        OutlinedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
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
          onPressed: () {
            Navigator.pop(context);
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return CreateCourseSuccessfullyDialog(
                  message: 'تم أضافة طالب بنجاح',
                );
              },
            );
          },
          child: const Text(
            'حفظ',
            style: TextStyle(color: kWhiteColor),
          ),
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            backgroundColor: kGreenColor,
            side: BorderSide(width: 2, color: kGreenColor),
          ),
        )
      ],
    );
  }
}
