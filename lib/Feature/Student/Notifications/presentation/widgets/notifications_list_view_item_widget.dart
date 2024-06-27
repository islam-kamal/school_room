import 'package:flutter/material.dart';
import 'package:school_room/core/utils/styles.dart';

import '../../../../../Base/common/theme.dart';


class NotificationListViewItem extends StatelessWidget{
  const NotificationListViewItem({super.key});

  @override
Widget build(BuildContext context) {
 return    Directionality(
     textDirection: TextDirection.rtl,
     child: Column(
   children: [
     Row(
        children: [
        Image.asset(
          'assets/images/Rectangle111.png',
          width: MediaQuery.of(context).size.width *0.1,
          height: MediaQuery.of(context).size.height *0.1,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width *0.04,
          ),
           Directionality(
            textDirection: TextDirection.rtl,
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height *0.04,
                ),
                Text(
                      'الوقت المتبقي لتسليم واجب اللغة العربية هوه : ',
                      style: Styles.textStyle12,
                      ),
                      Text(
                      'ساعة واحدة فقط ل استاذ وائل منصور',
                      style: Styles.textStyle12,
                      ),
                    Opacity(
                       opacity: 0.4,
                      child: Text(
                        'يوم الأربعاء الساعة 9:42 صباحًا',
                        style: Styles.textStyle12,
                        ),
                    ),
              ],
            ),
          ),
      ],
      ),
     const Divider(
       color: kLightGreyColor,
       thickness: 0.5,
       indent : 1,
       endIndent : 1,
     ),
   ],
     ) );
  
    }
}