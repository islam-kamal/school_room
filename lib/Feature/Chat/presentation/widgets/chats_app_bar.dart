import 'package:flutter/material.dart';
import 'package:school_room/core/utils/styles.dart';

class ChatsAppBar extends StatelessWidget{
  const ChatsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            flex: 0,
            child: Row(
              children: [
                Image.asset('assets/images/Rectangle.png',
                  width: MediaQuery.of(context).size.width *0.13,
                  height: MediaQuery.of(context).size.height *0.14,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.018,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ولي امر الطالب ايمن',
                      style: Styles.textStyle12.copyWith(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text('الصف الثالث المتوسط (3/1)')
                  ],
                ),
              ],
            )
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.18,
        ),
        const Expanded(
          flex: 1,
          child: ImageIcon(
            AssetImage('assets/images/UserCircle.png'),
          ),
        ),
      ],
    );
  }
}