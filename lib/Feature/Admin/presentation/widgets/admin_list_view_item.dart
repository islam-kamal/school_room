import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Feature/Admin/domain/entities/students_group_entity.dart';

class AdminListViewItem extends StatelessWidget{
   AdminListViewItem({super.key, required this.student});

final StudentGroupEntity student;

  @override
  Widget build(BuildContext context) {
    return  Column(
                  children: [
                    ListTile(
                             leading: CircleAvatar(
                          child: Image.asset(
                            student.image!,
                            width: MediaQuery.of(context).size.width *0.33,
                            height: MediaQuery.of(context).size.height *0.14,
                          ),
                          ),
                          title: Text(
                            student.name!,
                            style: GoogleFonts.cairo(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                            ),
                          onTap: (){},
                          ),
                           const Divider(
                    color: Colors.grey,
                    thickness: 0.3,
                  ),
                  ],
                );
  }
}