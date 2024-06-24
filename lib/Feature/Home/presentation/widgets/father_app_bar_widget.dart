import 'package:flutter/material.dart';
import 'package:school_room/core/utils/styles.dart';
import '../../domain/entities/son.dart';

class FatherAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final Son son;
  FatherAppBar({required this.son})
      : preferredSize = Size.fromHeight(65);
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
    child:  AppBar(
        leading: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Image.asset(son.image ,
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
               son.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(son.level
              )
            ],
          ),
        ],
      ),
    ),
    leadingWidth: MediaQuery.of(context).size.width * 0.5,
    actions: [
    Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
    child: ImageIcon(AssetImage('assets/images/notification.png')),)
    ],
    )

        ));
  }


}