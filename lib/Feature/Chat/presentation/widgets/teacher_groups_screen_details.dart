import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Feature/Chat/domain/entities/group_entity.dart';
import 'package:school_room/Feature/Chat/presentation/widgets/chats_group_list_view_item.dart';

class TeacherGroupsScreenDetails extends StatelessWidget{
    TeacherGroupsScreenDetails({super.key,});

final List<GroupEntity> groups = [
   GroupEntity(
    image: 'assets/images/groooups.png',
     name: 'فصل 3/1 المتوسط',
      message: 'اشكرك كثيرا! ,أتمنى لك يوماً عظيماً! ,😊',
       time: '10:25',
        numberMessage: '5'
        ),
  GroupEntity(
    image: 'assets/images/grouuups.png',
     name: 'فصل 3/1 المتوسط',
      message: 'عظيم، شكرا جزيلا! ,💫',
       time: '22:20',
        numberMessage: '12'
        ),
         GroupEntity(
    image: 'assets/images/groooups.png',
     name: 'فصل 3/2 المتوسط',
      message: 'نقدر ذلك! ,اراك قريبا! ,🚀',
       time: '10:45',
        numberMessage: '1'
        ),
        GroupEntity(
    image: 'assets/images/grouuups.png',
     name: 'فصل 3/1 المتوسط',
      message: 'عظيم، شكرا جزيلا! ,💫',
       time: '22:20',
        numberMessage: '12'
        ),
        GroupEntity(
    image: 'assets/images/groooups.png',
     name: 'فصل 3/3 المتوسط',
      message: 'اشكرك كثيرا! ,أتمنى لك يوماً عظيماً! ,😊',
       time: '10:25',
        numberMessage: '5'
        ),
];


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xff03314B),
            leading: const Padding(
              padding: EdgeInsets.all(15),
              child: ImageIcon(
                AssetImage('assets/images/Magnifer.png',
                ),color: Colors.white,
              ) ,
            ),
            actions: [
              Row(
                children: [
                  const Text(
                    'School-Chat',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,color: Colors.white,
                      fontSize: 17
                    ),),
                  Image.asset(
                    'assets/images/Logo.png',
                    width: MediaQuery.of(context).size.width *0.13,
                    height: MediaQuery.of(context).size.height *0.14,
                  ),
                ],
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'المجموعات',
                    style: GoogleFonts.cairo(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                ),
                ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: groups.length,
                            itemBuilder: (context , index){
                              return  ChatsGroupListViewItem(group: groups[index],);
                            }
                        ),
              ],
            ),
          ),
      ),
    );
  }
}