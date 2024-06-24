import 'package:flutter/material.dart';
import 'package:school_room/Base/common/theme.dart';
import 'package:school_room/Feature/Home/domain/entities/son.dart';
import 'package:school_room/core/utils/index.dart';
import 'package:school_room/Feature/Home/presentation/widgets/father_app_bar_widget.dart';
import '../../domain/entities/homework_data.dart';
import 'home_details_assignments_widget.dart';

class HomeViewDetailsBody extends StatefulWidget{
  Son son;
  HomeViewDetailsBody({required this.son});

  @override
  State<HomeViewDetailsBody> createState() => _HomeViewDetailsBodyState();
}

class _HomeViewDetailsBodyState extends State<HomeViewDetailsBody> {
  List<HomeWorkData> homeWorks = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeWorks = [ HomeWorkData(courseName: 'الرياضيات', teacherName: 'أ/ وائل منصور', deliveryStatus: true),
      HomeWorkData(courseName: 'اللغة الانجليزية', teacherName: 'أ/ خالد منصور', deliveryStatus: false),
      HomeWorkData(courseName: 'الدراسات الاجتماعية', teacherName: 'أ/ صفوان على', deliveryStatus: true)];
  }
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar:   FatherAppBar(son: widget.son),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            const HomeDetailsAssignments(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.013,
            ),
           Padding(padding: EdgeInsets.symmetric(vertical: 5),
           child:  Text(
             textAlign: TextAlign.start,
             'المجموعات/ الواجبات',
             style: Styles.textStyle22.copyWith(
               fontSize: 24,
               fontWeight: FontWeight.bold,
             ),
           ),),
            ListView.builder(
              shrinkWrap: true,
                itemCount: homeWorks.length,
                itemBuilder: (context,index){
              return Padding(padding: EdgeInsets.symmetric(vertical: 5),
              child: Container(
                width: double.infinity,
                //  height: MediaQuery.of(context).size.height *0.16,
                decoration: BoxDecoration(
                    color: homeWorks[index].deliveryStatus ? kLightGreyColor : kYellowLightColor,
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(color: homeWorks[index].deliveryStatus  ? kTransparentColor : kRedColor,width: 3)
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.symmetric(vertical: 3),
                        child: Text(homeWorks[index].courseName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
                      Padding(padding: EdgeInsets.symmetric(vertical: 3),
                          child: Text(homeWorks[index].teacherName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14))),
                      Padding(padding: EdgeInsets.symmetric(vertical: 3),
                          child:  homeWorks[index].deliveryStatus ?     Row(
                            children: [
                              Text("لم يتم تسليم الواجب هذا للاسبوع ",
                                  style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14,color: kGreenColor)),
                              Icon(Icons.check_circle_outlined,color: kGreenColor,)
                            ],
                          ) :  Row(
                            children: [
                              Text("لم يتم تسليم الواجب هذا للاسبوع  ",
                                  style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14,color: kRedColor)),
                              Icon(Icons.circle,color: kRedColor,)
                            ],
                          ))
                    ],
                  ),
                ),
              ),);
            })
            ],
          ),
          ),
      ),
    );
  }
}


