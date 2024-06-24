import 'package:flutter/material.dart';
import 'package:school_room/Feature/Home/domain/entities/son.dart';
import 'package:school_room/Feature/Home/presentation/widgets/home_view_details_body_widget.dart';


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