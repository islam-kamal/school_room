import 'package:flutter/material.dart';
import 'package:school_room/Feature/Home/presentation/widgets/assignments_list_view_item_widget.dart';
import 'package:school_room/core/utils/index.dart';
import 'package:school_room/Feature/Student/Home/presentation/widgets/home_details_app_bar_widget.dart';

import 'home_details_assignments_widget.dart';

class HomeViewDetailsBody extends StatelessWidget{
  const HomeViewDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scrollbar(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 26,left: 11, right: 11),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const HomeDetailsAppBar(),
                const HomeDetailsAssignments(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.013,
                ),
                Text(
                   textAlign: TextAlign.start,
                  'المجموعات/ الواجبات',
                  style: Styles.textStyle22.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                      itemBuilder: (context , index){
                        return const AssignmentsListViewItem();
                      }
                  ),
                ],
              ),
            ),
            ),
            // bottomNavigationBar: CustomBottomNavigationBar(),
        ),
      ),
    );
  }
}




// appBar: PreferredSize(
//             preferredSize: Size.fromHeight(70),
//             child: AppBar(
              
//               elevation: 0,
//               automaticallyImplyLeading: false,
//               leading: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 11),
//               child: Row(
//                           children: [
//                             Image.asset('assets/images/Rectangle.png',
//                             width: MediaQuery.of(context).size.width *0.13,
//                             height: MediaQuery.of(context).size.height *0.14,
//                             ),
//                             SizedBox(
//                               width: MediaQuery.of(context).size.width * 0.018,
//                             ),
//                              Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text('ايمن احمد',style: Styles.textStyle16,),
//                                 Text('الصف الثالث المتوسط (3/1)')
//                               ],
//                             ),
//                           ],
//                         ),
//             ),
//               backgroundColor: Colors.white,
//                       actions: const [
//                         ImageIcon(
//                           AssetImage('assets/images/UserCircle.png'),
//                         ),
//                       ],
//             ),
//           ),

