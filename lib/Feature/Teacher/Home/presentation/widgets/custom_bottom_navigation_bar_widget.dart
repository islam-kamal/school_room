import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget{
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
              selectedItemColor: const Color(0xff36A690),
             backgroundColor: Colors.white,
            items:   <BottomNavigationBarItem>[
               BottomNavigationBarItem(
                 tooltip: 'الرئيسية',
                  activeIcon: Container(
        decoration: BoxDecoration(
             color: const Color(0xff36A690),
            borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(18),
        child: Icon(
          Icons.home,
          color: Theme.of(context).canvasColor,
        )),
                  label:  'الرئيسية',
                  
                   icon: const ImageIcon(
               AssetImage('assets/images/HamburgerMenu.png'),
                    color: Color(0xff9A9BB1),
                    size: 50,
               ),
               ),
               BottomNavigationBarItem(
                tooltip: 'دردشات',
                activeIcon: Container(
        decoration: BoxDecoration(
            color: const Color(0xff36A690),
            borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(15),
        child: Icon(
          Icons.home,
          color: Theme.of(context).canvasColor,
        )),
                  label:  'دردشات',
                  icon: const ImageIcon(
               AssetImage('assets/images/chatsss.png'),
                   color: Color(0xff9A9BB1),
                   size: 50,
               ),
               ),
               
               BottomNavigationBarItem(
                tooltip: 'الاشعارات',
                activeIcon: Container(
        decoration: BoxDecoration(
            color: const Color(0xff36A690),
            borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(15),
        child: Icon(
          Icons.home,
          color: Theme.of(context).canvasColor,
        )),
                  label:  'الاشعارات',
                  icon: const ImageIcon(
               AssetImage('assets/images/UserCircle.png'),
                    color: Color(0xff9A9BB1),
                    size: 50,
               ),
                  ),
               
            ],
          );
  }
}