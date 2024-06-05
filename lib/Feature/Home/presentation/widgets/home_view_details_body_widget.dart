import 'package:flutter/material.dart';
import 'package:school_room/core/utils/index.dart';
import 'package:school_room/Feature/Home/presentation/widgets/home_details_app_bar_widget.dart';

import 'custom_bottom_navigation_bar_widget.dart';
import 'home_details_assignments_widget.dart';

class HomeViewDetailsBody extends StatelessWidget{
  const HomeViewDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 50,left: 11, right: 11),
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
              Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height *0.16,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 189, 208, 228),
                borderRadius: BorderRadius.circular(11),
              ),
              )
            ],
          ),
          ),
          bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}


