import 'package:flutter/material.dart';
import 'package:school_room/Feature/Teacher/Groups/domain/entities/group_entity.dart';

class TeacherChatsGroupListViewItem extends StatelessWidget{
   const TeacherChatsGroupListViewItem({super.key, required this.group});

final GroupEntity group;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            maxRadius: 29,
            backgroundColor: Colors.white,
            child: Image.asset(
              group.image,
            ),
            ),
            title: Text(group.name),
            subtitle: Text(
              group.message,
               overflow: TextOverflow.ellipsis,
              ),
            trailing: Column(
              children: [
                Text(group.time),
                SizedBox(
                  height: MediaQuery.of(context).size.height *0.01,
                ),
                Badge(
                  backgroundColor: const Color(0xff36A690),
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  label: Text(group.numberMessage),
                  largeSize: 19,
                ),
                ],
            ),
        ),
      ],
    );
  }
}

