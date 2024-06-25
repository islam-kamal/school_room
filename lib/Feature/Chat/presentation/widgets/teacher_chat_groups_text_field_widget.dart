import 'package:flutter/material.dart';

class TeacherChatGroupsTextField extends StatelessWidget{
  const TeacherChatGroupsTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            color: Colors.white,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.12,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xff36A690),
                    foregroundColor: Colors.white,
                    child: IconButton(
                      onPressed: (){
                        print('cghcyhcghhcgghc');
                      },
                      icon: ImageIcon(
                        AssetImage('assets/images/send.png')
                      ),
                      tooltip: 'ارسال',                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.015,
                  ),
                   Expanded(
                    child: Card(
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                       ),
                          child: const TextField(
                             autocorrect: true,
                             cursorColor: Color.fromARGB(255, 81, 77, 77),
                            maxLines: 5,
                            minLines: 1,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: Color(0xffF0F0F3),
                              filled: true,
                              hintText: '...اكتب رسالة',
                              hintTextDirection: TextDirection.ltr,
                              contentPadding:EdgeInsets.symmetric(horizontal: 16, vertical: 8)
                            ),
                          ),
                   ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                   CircleAvatar(
                    backgroundColor: Color(0xff36A690),
                    foregroundColor: Colors.white,
                    child: IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.mic)
                      ),
                  ),
                  IconButton(
                    onPressed: (){},
                     icon: const Icon(
                      Icons.add,
                      color: Color(0xff36A690),
                      ),
                     ),
                ],
              ),
            ),
          );
  }
}