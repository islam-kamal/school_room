import 'package:flutter/material.dart';

class TeacherChatActionsAppBar extends StatelessWidget{
  const TeacherChatActionsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(left: 18 , top: 8,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
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
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      child: ImageIcon(
                        AssetImage(
                          'assets/images/threePoints.png',
                          )
                      ),
                    ),
                  ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.034,
                    ),
                     Row(
                      children: [
                        const ImageIcon(
                    AssetImage('assets/images/vedio.png')
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.07,
                    ),
                    const ImageIcon(
                    AssetImage('assets/images/phonee.png')
                  ),
                      ],
                    )
                ],
              ),
            );
  }
}