import 'package:flutter/material.dart';
import 'package:school_room/Feature/Father/Home/domain/entities/entities/son.dart';
import 'package:school_room/Feature/Father/Home/presentation/widgets/home_view_details_body_widget.dart';



class HomeViewDetails extends StatelessWidget{
  Son son;
   HomeViewDetails({required this.son});

  @override
  Widget build(BuildContext context) {
    return  HomeViewDetailsBody(
      son: son,
    );
  }
}