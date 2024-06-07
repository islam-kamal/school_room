import 'package:flutter/material.dart';

import 'common/shared.dart';
import 'common/theme.dart';

Widget no_data_widget({BuildContext? context, bool? center =  false}) {
  return Padding(
      padding: EdgeInsets.only(top:center! ? Shared.width * 0.8 : 5, ),
  child:  Center(
      child:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.do_not_disturb_alt,size: 50,),
        Text("لا توجد بيانات" ,
        style: TextStyle(color: kBlackColor,fontWeight: FontWeight.bold),)
      ],

      )      ) );
}

class Son{
  final String name;
  final String image;
  final String level;
  final bool status;
  Son({required this.name,required this.image,required this.level,required this.status});
}

