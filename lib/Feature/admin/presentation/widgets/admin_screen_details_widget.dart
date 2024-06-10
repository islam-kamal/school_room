import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Feature/admin/domain/entities/course_entity.dart';
import 'package:school_room/Feature/admin/presentation/widgets/admin_app_bar.dart';
import 'package:school_room/Feature/admin/presentation/widgets/groups_list_view_item_widget.dart';

class AdminScreenDetails extends StatelessWidget{
   AdminScreenDetails({super.key});
final List<CourseEntity> courses = [
  CourseEntity('Arabic', 'tow', '20'),
  CourseEntity('English', 'four', '27'),
  CourseEntity('Math', 'five', '24'),
  CourseEntity('Arabic', 'tow', '33'),
  CourseEntity('Arabic', 'tow', '33'),
  CourseEntity('Arabic', 'tow', '33'),
];
  @override
  Widget build(BuildContext context) {
    return  Directionality(
        textDirection: TextDirection.rtl,
      child: Scaffold(
        body:  Padding(
          padding: const EdgeInsets.only(top: 44,left: 4, right: 6),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const AdminAppBar(),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: courses.length,
                    itemBuilder: (context , index){
                      return  GroupsListViewItem(course: courses[index],);
                    }
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _showAlertDialog(context),
          backgroundColor: Colors.white,
          tooltip: 'انشاء مجموعة',
          elevation: 5,
          splashColor: Colors.grey,
          child: const Icon(Icons.add, color: Colors.black, size: 29,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }
}


void _showAlertDialog(BuildContext context) {
    TextEditingController _textFieldController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Align(
            alignment: Alignment.centerRight,
            child:  Text(
              'ادخل اسم المجموعة',
              style: GoogleFonts.cairo(),
              )),
          content: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              width: double.infinity,
               height: MediaQuery.of(context).size.height *0.1,
           decoration: BoxDecoration(
            color: const Color(0xffEBEBEB),
             borderRadius: BorderRadius.circular(10),
             
           ),
             child: const Padding(
               padding: EdgeInsets.symmetric(horizontal: 10),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  Opacity(
                      opacity: 0.5,
                     child: Text('اسم المجموعة')),
                   TextField(
                     textAlign: TextAlign.right,
                     autocorrect: false,
                     autofocus: true,
                     keyboardType: TextInputType.emailAddress,
                     decoration:  InputDecoration(
                       border: InputBorder.none,
                     ),
                   )
                 ],
               ),
             ),
         ),
          ),
          actions: <Widget>[
            SizedBox(
             width: MediaQuery.of(context).size.width *0.22,
              height: MediaQuery.of(context).size.height *0.048,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 1,
                      ),),
                ),
                child: const Text(
                  'الغاء',
                  style: TextStyle(color: Colors.black),
                  ),
                onPressed: () {
                  // You can handle the submit action here
                  print('Entered text: ${_textFieldController.text}');
                  Navigator.of(context).pop();
                   },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width *0.22,
              height: MediaQuery.of(context).size.height *0.048,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff33A88E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('التالي'),
                onPressed: () {
                  _registerSuccessfulDialog(context);
                },
              ),
            ),
            
          ],
        );
      },
    );
  }


    void _registerSuccessfulDialog(BuildContext context) {
    TextEditingController _textFieldController = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
         content: Padding(
           padding: const EdgeInsets.only(top: 77 , bottom: 33),
           child: Column(
            children: [
              Image.asset(
            'assets/images/succes-validation-nxPvtk8St9.png'
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                        'تم انشاء المجموعة بنجاح',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                        ),
                        ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                 width: MediaQuery.of(context).size.width * 0.25,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                     textStyle: GoogleFonts.cairo(
                      fontSize: 24,
                      fontWeight: FontWeight.w300
                     ),
                      backgroundColor: Color.fromARGB(255, 85, 188, 165),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('تم'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
              ),
            ],
           ),
         )
        );
      },
    );
  }
