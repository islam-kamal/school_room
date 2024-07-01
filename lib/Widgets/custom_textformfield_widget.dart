import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_room/Base/common/theme.dart';

class CustomTextFormFieldWidget extends StatelessWidget{
  TextEditingController? controller ;
  String? labelText;
  int? maxLines;

  CustomTextFormFieldWidget({this.controller,this.labelText,this.maxLines=1});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kInactiveColor,
          ),
          child: TextFormField(
            controller: controller,
            textAlign: TextAlign.right,
            autocorrect: true,
            autofocus: false,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10),
maxLines: maxLines,
            decoration:  InputDecoration(
              labelStyle: TextStyle(
                  decorationStyle: TextDecorationStyle.solid,
                  overflow: TextOverflow.ellipsis,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
              labelText: labelText!,
              floatingLabelAlignment: FloatingLabelAlignment.start,
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                  vertical: 15, horizontal: 10),
              prefixIconConstraints:
              BoxConstraints(minWidth: 0, minHeight: 0),
            ),
          )),
    );
  }

}