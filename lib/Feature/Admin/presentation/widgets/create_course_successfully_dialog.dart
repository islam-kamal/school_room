import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Base/common/shared.dart';
import '../../../../Base/common/theme.dart';

class CreateCourseSuccessfullyDialog extends StatelessWidget {
  final String message;
  CreateCourseSuccessfullyDialog({required this.message});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: kWhiteColor, // Change the background color here
        content: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Container(
            height: Shared.width * 0.9,
            width: Shared.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/succes-validation-nxPvtk8St9.png'),
                 Align(
                  alignment: Alignment.center,
                  child: Text(
                  message,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'تم',
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
            ),
          ),
        ));
  }
}
