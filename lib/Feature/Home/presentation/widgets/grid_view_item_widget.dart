import 'package:flutter/material.dart';
import 'package:school_room/Feature/Home/domain/entities/son.dart';
import 'package:school_room/Feature/Home/presentation/pages/home_view_details.dart';
import 'package:school_room/core/utils/index.dart';

class GridViewItem extends StatelessWidget{
  const GridViewItem({super.key, required Son son});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  (const HomeViewDetails())));
      },
      child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.49,
                height: MediaQuery.of(context).size.height * 0.48,
                decoration: BoxDecoration(
                   color: Colors.white,
                 border: Border.all(
                 width: 1,
                 color:  const Color(0xffC9C9C9),
          ),
          ),
              ),
                 Column(
                   children: [
                     Align(
                      alignment: Alignment.topCenter,
                       child: Image.asset(
                        'assets/images/Rectangleee22.png',
                         width: MediaQuery.of(context).size.width * 0.5,
                         height: MediaQuery.of(context).size.height * 0.09,
                        ),
            ),
             Text(
              'احمد',
            style: Styles.textStyle22.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold
              ),
            ),
              Text(
              'الصف الاول المتوسط',
            style: Styles.textStyle14
            ),
            Row(
              children: [
             Text(
              '  تم تسليم واجبات هذا للاسبوع ',
            style: Styles.textStyle12.copyWith(
              fontSize: 11,
              ),
            ),
            Image.asset('assets/images/Vector.png')
              ]
            ),
                   ],
                 ),
            ],
        
      ),
    );
  }
}





