import 'package:flutter/material.dart';
import 'package:school_room/core/utils/index.dart';

class TextHome extends StatelessWidget{
  const TextHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('School-Room',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                    
                Image.asset('assets/images/Group.png',
                 width: 92,
                 height: 92,
                ),
                  ],
                ),

                 SizedBox(
                  height: MediaQuery.of(context).size.height * 0.006,
                ),
                Text('اختر الأبن',
                    style: Styles.textStyle22.copyWith(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      fontStyle:  FontStyle.normal
                      ),
                      ),
      ],
    );
  }
}
