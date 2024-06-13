import 'package:flutter/widgets.dart';

class StudentExamsAppBar extends StatelessWidget{
  const StudentExamsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              Image.asset(
                'assets/images/Rectangleee22.png',
                 width: MediaQuery.of(context).size.width * 0.12,
                ),
                SizedBox(
                      width: MediaQuery.of(context).size.width * 0.024,
                    ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ايمن احمد',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                  Text(
                    'الصف الثالث المتوسط (3/1)',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    ),
                ],
              ),
            ],
          );
  }
}