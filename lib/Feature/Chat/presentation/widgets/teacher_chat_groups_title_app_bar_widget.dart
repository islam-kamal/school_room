import 'package:flutter/material.dart';

class TeacherChatGroupsTitleAppBar extends StatelessWidget{
  const TeacherChatGroupsTitleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
               Row(
                children: [
                   Align(
            alignment: Alignment.topRight,
            child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 2,
                    offset: const Offset(0, 0.5),
                  )
                ]
              ),
              child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: ImageIcon(
                      color: Colors.black,
              AssetImage(
              'assets/images/icon_back.png',
              ),
                      ),
                  ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.27,
          ),
          const Text(
            'رسالة',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
            ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/Rectangle111.png',
                    width: MediaQuery.of(context).size.width * 0.12,                  //////////////////////////////////mediaQuiry
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.024,
                    ),
                   const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'فصل 3/1 المتوسط',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                        ),
                      Opacity(
                        opacity: 0.4,
                        child: Text(
                          '15 طالب',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          );
  }
}