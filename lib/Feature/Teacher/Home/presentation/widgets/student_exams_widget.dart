import 'package:flutter/material.dart';
import 'package:school_room/core/utils/styles.dart';

class StudentExams extends StatelessWidget{
  const StudentExams({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height *0.14,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 246, 145, 145),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child:  Padding(padding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('امتحانات - هذا الاسبوع',style: Styles.textStyle22,),
                        SizedBox(
                          height: MediaQuery.of(context).size.height *0.018,
                        ),
                         Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '5 ',
                                style: Styles.textStyle22.copyWith(
                            fontWeight: FontWeight.bold
                          ),),
                                Text(
                              'تم تسليمهم ',
                              style: Styles.textStyle12.copyWith(
                              fontSize: 19.09
                            ),),
                              ],),
                            SizedBox(
                          width: MediaQuery.of(context).size.width *0.055,
                        ),
                        Row(
                              children: [
                                Text(
                                  '4 ',
                                style: Styles.textStyle22.copyWith(
                            fontWeight: FontWeight.bold
                          ),),
                                Text(
                              'غير مكتملين',
                              style: Styles.textStyle12.copyWith(
                              fontSize: 19.09
                            ),),
                              ],),
                          ],
                        )
                      ],
                    ),
                     Column(
                      children: [
                        Text(
                          '9',
                          style: Styles.textStyle22.copyWith(
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        Text(
                          'واجبات',
                          style: Styles.textStyle12.copyWith(
                              fontSize: 19.09
                            ),)
                    ],)
                    ],
                  ),
                  ),
                ),
      ],
    );
  }
}