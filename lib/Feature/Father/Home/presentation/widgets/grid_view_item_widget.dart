import 'package:flutter/material.dart';
import 'package:school_room/Base/common/navigtor.dart';
import 'package:school_room/Feature/Father/Home/domain/entities/entities/son.dart';
import 'package:school_room/Feature/Father/Home/presentation/pages/pages/home_view_details.dart';
import 'package:school_room/core/utils/index.dart';


class GridViewItem extends StatelessWidget{
   GridViewItem({required this.son});
 final Son son;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        customAnimatedPushNavigation(context,  HomeViewDetails(
          son: son,
        ));

        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  ( HomeViewDetails(
          son: son,
        ))));
      },
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.49,
                height: MediaQuery.of(context).size.height * 0.48,
                decoration: BoxDecoration(
                   color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
                 border: Border.all(
                 width: 1,
                 color:  const Color(0xffC9C9C9),
          ),
          ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(
                      son.name ?? '',
                      style: Styles.textStyle22.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                        son.level ?? '',
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
                          son.status ?   Image.asset('assets/images/Vector.png') :  Image.asset('assets/images/Vector.png')
                        ]
                    ),
                  ],
                ),
              ),


              Align(
                alignment: Alignment(0, -2),
                child:  Image.asset(
                  son.image ?? ''  ,
                  width: 80,
                  height: 80,
                ),
              ),
            ],
        
      ),
    );
  }
}





