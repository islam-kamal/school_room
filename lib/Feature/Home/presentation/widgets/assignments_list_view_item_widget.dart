import 'package:flutter/material.dart';
import 'package:school_room/core/utils/index.dart';

class AssignmentsListViewItem extends StatelessWidget{
  const AssignmentsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          height: MediaQuery.of(context).size.height *0.142,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 208, 206, 189),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
               width: 2.7,
              color: Colors.red,
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'رياضيات',
                style: Styles.textStyle22.copyWith(
                  fontSize: 23.3,
                  fontWeight: FontWeight.w400
                ),
                ),
                Text(
                'أ/ وائل منصور',
                style: Styles.textStyle14.copyWith(
                  fontSize: 15.5,
                  fontStyle: FontStyle.normal
                ),
                ),
                Row(
                  children: [
                    Text(
                'لم يتم تسليم الواجب هذا للاسبوع ',
                style: Styles.textStyle14.copyWith(
                  fontSize: 13.5,
                  fontStyle: FontStyle.normal
                ),
                ),
                Image.asset('assets/images/close-circle.png')
                  ],
                ),
                
            ],
          ),
        ),
        const Padding(
              padding: EdgeInsets.only(top: 8)
              ),
      ],
    );
  }
}