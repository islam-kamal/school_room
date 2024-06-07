import 'package:flutter/material.dart';
import 'package:school_room/Feature/Home/presentation/widgets/grid_view_item_widget.dart';
import 'package:school_room/Feature/Home/presentation/widgets/text_home_widget.dart';

import '../../domain/entities/son.dart';

// ignore: must_be_immutable
class HomeViewBody extends StatelessWidget{
   HomeViewBody({super.key});

  List<Son> sons = [
    Son(name: 'name', image:  'assets/images/Rectangleee22.png', level: 'الصف الاول المتوسط', status: true),
    Son(name: 'name', image:  'assets/images/Rectangleee22.png', level: 'level', status: false),
    Son(name: 'name', image:  'assets/images/Rectangleee22.png', level: 'الصف الاول المتوسط', status: true),
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









// BottomNavigationBar bottom_navbar_home(){  
//    return BottomNavigationBar( 
//       type: BottomNavigationBarType.fixed,
//       selectedItemColor: Colors.black,
//               items: const [
//                 BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
//                 BottomNavigationBarItem(
//                     icon: Icon(Icons.feed_outlined), label: 'Activity'),
//                 BottomNavigationBarItem(
//                     icon: Icon(Icons.account_balance_wallet_outlined),
//                     label: 'Wallet'),
//                 BottomNavigationBarItem(
//                     icon: Icon(Icons.chat_bubble_outline),
//                     label: 'Notification'),
//                 BottomNavigationBarItem(
//                     icon: Icon(Icons.settings), label: 'Settings'),
//               ],

//    );
// }


// BottomNavigationBar bottom_navbar_home(){  
//    return BottomNavigationBar( 
      
//               items:  [
//                 BottomNavigationBarItem(
//                        icon: const ImageIcon(
//                AssetImage('assets/images/home.png'),
//                     color: Color(0xff9A9BB1),
//                     size: 50,
//                ),
//     label: ' الرئيسية',
//     tooltip: 'home',
//     activeIcon: Container(
//       height: 66,
//         decoration: BoxDecoration(
//             color: Color.fromARGB(255, 47, 196, 163),
//             borderRadius: BorderRadius.circular(10)),
//         padding: const EdgeInsets.all(15),
//         child: const Icon(
//           Icons.home,
//            color: Colors.black,
//         )),
//   ),
//     BottomNavigationBarItem(
//                        icon: const ImageIcon(
//                AssetImage('assets/images/chats.png'),
//                     color: Color(0xff9A9BB1),
//                     size: 50,
//                ),
//     label: '',
//     tooltip: 'home',
//     activeIcon: Container(
//         decoration: BoxDecoration(
//             color: Colors.amber,
//             borderRadius: BorderRadius.circular(10)),
//         padding: const EdgeInsets.all(15),
//         child: const Icon(
//           Icons.home,
//           color: Colors.amber,
//         )),
//   ),
//     BottomNavigationBarItem(
//                        icon: const ImageIcon(
//                AssetImage('assets/images/notificationss.png'),
//                     color: Color(0xff9A9BB1),
//                     size: 50,
//                ),
//     label: '',
//     tooltip: 'home',
//     activeIcon: Container(
//         decoration: BoxDecoration(
//             color: Colors.amber,
//             borderRadius: BorderRadius.circular(10)),
//         padding: const EdgeInsets.all(15),
//         child: const Icon(
//           Icons.home,
//           color: Colors.amber,
//         )),
//   ),
//               ],

//    );
// }














