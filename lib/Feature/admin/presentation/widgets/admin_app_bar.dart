import 'package:flutter/material.dart';
import 'package:school_room/core/utils/styles.dart';

class AdminAppBar extends StatelessWidget{
  const AdminAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 0,
                child: Row(
                  children: [
                    Image.asset('assets/images/Rectangle.png',
                      width: MediaQuery.of(context).size.width *0.13,
                      height: MediaQuery.of(context).size.height *0.07,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.018,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ايمن احمد',
                          style: Styles.textStyle1666.copyWith(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text('مدير قسم ال IT')
                      ],
                    ),
                  ],
                )
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.17,
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Text(
                      'School-Room',
                    style: Styles.textStyle16.copyWith(
                      fontSize: 16.5,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Image.asset(
                      'assets/images/Group.png',
                    width: MediaQuery.of(context).size.width *0.15,
                  ),
                ],
              )
            ),
          ],
        ),
        const Divider(
          color: Colors.grey,
          thickness: 0.5,
        ),
      ],
    );
  }
}