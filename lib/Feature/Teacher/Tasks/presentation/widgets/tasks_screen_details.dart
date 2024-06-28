import 'package:flutter/material.dart';
import 'package:school_room/Base/common/theme.dart';
import 'package:school_room/Feature/Student/Tasks/presentation/widgets/student_task_assigned_widget.dart';
import 'package:school_room/Feature/Student/Tasks/presentation/widgets/student_task_completed_widget.dart';
import 'package:school_room/Feature/Student/Tasks/presentation/widgets/student_tasks_app_bar.dart';
import 'package:school_room/Feature/Student/Tasks/presentation/widgets/student_task_not_delivered_widget.dart';

class TasksScreenDetails extends StatefulWidget{
   TasksScreenDetails({super.key});

  @override
  State<TasksScreenDetails> createState() => _TasksScreenDetailsState();
}

class _TasksScreenDetailsState extends State<TasksScreenDetails> {
   int index = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
     child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: StudentTasksAppBar(),
      ),
      body: Column(
        children: [
          Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
           Container(
             height: 40,
             child: Row(
               children: [
                 Expanded(child:InkWell(
                   onTap: (){
                    setState(() {
                      index =0;
                    });

                   },
                   child: Padding(
                     padding: EdgeInsets.symmetric(horizontal: 5),
                     child: Container(
                       decoration: BoxDecoration(
                           color: index == 0 ? kBlueColor : kTransparentColor,
                           borderRadius: BorderRadius.circular(10)
                       ),
                       alignment: Alignment.center,
                       child:  Text('مكلف',style: TextStyle(color: index == 0 ? kWhiteColor : kGreyColor),),
                     ),
                   ),
                 )),
                 Expanded(child: InkWell(
                     onTap: (){
                       setState(() {
                         index =1;
                       });
                     },
                     child: Padding(
                       padding: EdgeInsets.symmetric(horizontal: 5),
                       child: Container(
                         decoration: BoxDecoration(
                             color: index == 1 ? kRedColor : kTransparentColor,
                             borderRadius: BorderRadius.circular(10),
                         ),
                         alignment: Alignment.center,
                         child:  Text('انتهى',style: TextStyle(color: index == 1 ? kWhiteColor : kGreyColor),),
                       ),
                     ),
                 )),
                 Expanded(child: InkWell(
                     onTap: (){
                       setState(() {
                         index =2;
                       });
                     },
                     child: Padding(
                       padding: EdgeInsets.symmetric(horizontal: 5),
                       child: Container(
                         decoration: BoxDecoration(
                             color: index == 2 ? kGreenColor : kTransparentColor,
                             borderRadius: BorderRadius.circular(10)
                         ),
                         alignment: Alignment.center,
                         child:  Text('تمت',style: TextStyle(color: index == 2 ? kWhiteColor : kGreyColor),),
                       ),
                     ),)),

               ],
             ),
           ),
           Divider(),

        index == 0 ? StudentTaskAssignedWidget() : index == 1 ?   StudentTaskNotDeliverdWidget() : StudentTaskCompletedWidget()
        ],
      ),
     ),
     );
  }
}