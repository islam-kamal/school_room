import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:school_room/Feature/Chat/presentation/widgets/student_tasks_title_app_bar_widget.dart';
import 'package:school_room/Feature/Student/Home/presentation/widgets/tasks_list_view_item.dart';

class TasksScreenDetails extends StatelessWidget{
  const TasksScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
     child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        elevation: 0,
       // title: StudentTasksTitleAppBar(),
      ),
      body: Column(
        children: [
          Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context , index){
              return TasksListViewItem();
            }
            ),
        ],
      ),
     ),
     );
  }
}