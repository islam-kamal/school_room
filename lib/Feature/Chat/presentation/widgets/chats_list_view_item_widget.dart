import 'package:flutter/material.dart';
import 'package:school_room/core/utils/index.dart';

class ChatsListViewItem extends StatelessWidget{
  const ChatsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset('assets/images/Rectangle.png',
          width: MediaQuery.of(context).size.width *0.12,
          height: MediaQuery.of(context).size.height *0.14,
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'أ/ احمد محمد',
              style: Styles.textStyle1666,
            ),
            Text(
                'اشكرك كثيرا! ,أتمنى لك يوماً عظيماً! ,😊'
            ),
          ],
        ),
        Column(
          children: [
            Text(
                '10:25',
              style: Styles.textStyle12.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *0.011,
            ),
            Container(
              padding: EdgeInsets.only(right: 3,top: 0.8),
              width: MediaQuery.of(context).size.width *0.044,
              height: MediaQuery.of(context).size.height *0.021,
              decoration: BoxDecoration(
                color: Color(0xff36A690),
                    borderRadius: BorderRadius.circular(2),
              ),
              child: Text(
                '5',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}