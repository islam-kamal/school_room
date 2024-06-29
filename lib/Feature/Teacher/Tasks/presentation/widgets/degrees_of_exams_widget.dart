import 'package:flutter/material.dart';
import 'package:school_room/Feature/Teacher/Tasks/presentation/widgets/degrees_list_view_item.dart';
import 'package:school_room/Feature/Teacher/Tasks/presentation/widgets/three_container_in_degrees.dart';

class DegreesOfExams extends StatelessWidget {
  const DegreesOfExams({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ThreeContainerInDegrees(
                containerWidth: 0.22,
                containerName: 'الصف',
              ),
              ThreeContainerInDegrees(
                  containerWidth: 0.37, containerName: 'الفضل الدراسي'),
              ThreeContainerInDegrees(
                  containerWidth: 0.3, containerName: 'نهاية العام '),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const DegreesListViewItem();
                })),
      ],
    );
  }
}
