import 'package:flutter/material.dart';
import 'package:school_room/Feature/Chat/presentation/widgets/student_tasks_title_app_bar_widget.dart';
import 'package:school_room/Feature/Home/presentation/widgets/tasks_assignment_list_view_item.dart';
import 'package:school_room/Feature/Home/presentation/widgets/tasks_done_list_view_item.dart';
import 'package:school_room/Feature/Home/presentation/widgets/tasks_finish_list_view_item.dart';

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
        title: const StudentTasksTitleAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context , index){
                return const TasksDoneListViewItem();  //TasksAssignmentListViewItem();   //TasksFinishListViewItem();    
              }
              ),
          ],
        ),
      ),
     ),
     );
  }
}