import 'package:flutter/material.dart';
import 'package:school_room/core/utils/styles.dart';

class AdminAppBar extends StatelessWidget implements PreferredSizeWidget{


  @override
  final Size preferredSize;

  AdminAppBar({Key? key})
      : preferredSize = Size.fromHeight(65),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xFFCDCDCD),
                  width: 2.0, // Set the border width here
                ),
              ),
            ),
            child: AppBar(
              leading: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),
                        ),
                        Text('مدير قسم ال IT')
                      ],
                    ),
                  ],
                ),
              ),
              leadingWidth: MediaQuery.of(context).size.width * 0.5,
              actions: [
                Row(
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
                ),
              ],
            )
        ));
  }

}