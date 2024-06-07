import 'package:flutter/material.dart';
import 'package:school_room/core/utils/styles.dart';

class GroupsListViewItem extends StatelessWidget{
  const GroupsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height *0.007,
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height *0.154,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(6),
          ),
            child: Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'مجموعة اللغة العربية',
                        style: Styles.textStyle22,
                      ),
                      Text(
                          'الصف الثالث المتوسط (3/4)',
                        style: Styles.textStyle16,
                      ),
                      Row(
                        children: [
                          Text(
                              '20 طالب ',
                            style: Styles.textStyle22,
                          ),
                          Image.asset('assets/images/profile.png')
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width *0.049,
                  ),
                  Column(
                    children: [
                      IconButton(
                        color: Colors.black,
                        onPressed: (){},
                        icon: const Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                ],
              ),
            )
        ),
      ],
    );
  }
}