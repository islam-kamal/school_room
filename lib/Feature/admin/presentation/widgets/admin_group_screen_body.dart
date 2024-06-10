import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Feature/admin/domain/entities/students_group_entity.dart';
import 'package:school_room/Feature/admin/presentation/widgets/admin_list_view_item.dart';

class AdminGroupScreenBody extends StatelessWidget{
   AdminGroupScreenBody({super.key});

final List<StudentGroupEntity> students = [
  StudentGroupEntity(image: 'assets/images/Rectangleee22.png', name: 'ايمن احمد'),
  StudentGroupEntity(image: 'assets/images/Rectangle111.png', name: 'ايمن احمد'),
  StudentGroupEntity(image: 'assets/images/Rectangle111.png', name: 'محمود محمد'),
  StudentGroupEntity(image: 'assets/images/Rectangleee22.png', name: 'مريم احمد'),
  StudentGroupEntity(image: 'assets/images/Rectangle111.png', name: 'ساره وليد'),
  StudentGroupEntity(image: 'assets/images/Rectangle111.png', name: 'هناء رمزي'),
  
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(top: 22),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: students.length,
                itemBuilder: (context , index){
                  return AdminListViewItem(student: students[index],);
                }),
                 ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 209, 209, 209),
                    child:Icon(
                      Icons.add,
                      color: Colors.black,
                      ),
                  ),
                  title: Text(
                    'اضافة طالب',
                    style: GoogleFonts.cairo(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                ),
              ],
            ),
          ),
        );
  }
}