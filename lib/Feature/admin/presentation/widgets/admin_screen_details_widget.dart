import 'package:flutter/material.dart';
import 'package:school_room/Feature/admin/presentation/widgets/admin_app_bar.dart';
import 'package:school_room/Feature/admin/presentation/widgets/groups_list_view_item_widget.dart';

class AdminScreenDetails extends StatelessWidget{
  const AdminScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Directionality(
        textDirection: TextDirection.rtl,
      child: Scaffold(
        body:  Padding(
          padding: EdgeInsets.only(top: 44,left: 4, right: 6),
          child: Column(
            children: [
              AdminAppBar(),
              GroupsListViewItem(),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 0,
                  itemBuilder: (context , index){
                    return const GroupsListViewItem();
                  }
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(

          onPressed: () {},
          child: Icon(Icons.add, color: Colors.black, size: 29,),
          backgroundColor: Colors.white,
          tooltip: 'انشاء مجموعة',
          elevation: 5,
          splashColor: Colors.grey,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }
}