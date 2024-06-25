import 'package:flutter/material.dart';
import 'package:school_room/Feature/Home/presentation/widgets/grid_view_item_widget.dart';
import 'package:school_room/Feature/Home/presentation/widgets/text_home_widget.dart';

import '../../domain/entities/son.dart';

// ignore: must_be_immutable
class HomeViewBody extends StatelessWidget{
   HomeViewBody({super.key});

  List<Son> sons = [
    Son(name: 'name', image:  'assets/images/Rectangleee22.png', level: 'الصف الاول المتوسط', status: true),
    Son(name: 'name', image:  'assets/images/Rectangle.png', level: 'level', status: false),
    Son(name: 'name', image:  'assets/images/Avatar.png', level: 'الصف الاول المتوسط', status: true),
    Son(name: 'assaas0',image:  'assets/images/Rectangleee22.png',level: 'dssd',status: false)
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:  TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 60,left: 15, right: 15),
          child: Center(
            child: Column(
              children: [
              const TextHome(),
              SizedBox(
                height: MediaQuery.of(context).size.height *0.01,
              ),
              
               Expanded(
                 child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                               shrinkWrap: true,
                               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                   crossAxisCount: 2,
                                   crossAxisSpacing: 10,
                                   mainAxisSpacing: 45,
                                   ),
                            itemCount: sons.length,
                   itemBuilder: (context , index){
                    return GridViewItem(son: sons[index],);
                   },
                             ),
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

