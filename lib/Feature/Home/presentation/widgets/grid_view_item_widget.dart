import 'package:flutter/material.dart';
import 'package:school_room/Base/common/theme.dart';
import 'package:school_room/Feature/Home/domain/entities/son.dart';
import 'package:school_room/core/utils/index.dart';
import 'package:school_room/Feature/Home/presentation/pages/home_view_details.dart';

import '../../../../Base/common/navigtor.dart';

class GridViewItem extends StatelessWidget {
  GridViewItem({required this.son});
  final Son son;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          customAnimatedPushNavigation(
              context,
              HomeViewDetails(
                son: son,
              ));

          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => (HomeViewDetails(
                    son: son,
                  ))));
        },
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.49,
              //    height: MediaQuery.of(context).size.height * 0.30,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: const Color(0xffC9C9C9),
                ),
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    son.name ?? '',
                    style: Styles.textStyle22
                        .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(son.level ?? '', style: Styles.textStyle14),
                  son.status
                      ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                            child:     Text(
                            '  تم تسليم واجبات هذا للاسبوع ',
                            style: Styles.textStyle12
                                .copyWith(fontSize: 12, color: kGreenColor),
                            maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            )   ),
                          Icon(
                            Icons.check_circle_outlined,
                            color: kGreenColor,
                          )
                        ])
                      : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                            child:      Text(
                            ' هناك واجبات لم تسلم بعد ',
                            style: Styles.textStyle12
                                .copyWith(fontSize: 11, color: kYellowDarkColor),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ) ),
                          Icon(
                            Icons.arrow_circle_down_rounded,
                            color: kYellowDarkColor,
                          )
                        ]),
                ],
              ),
            ),
            Align(
              alignment: Alignment(0, -2),
              child: Image.asset(
                son.image ?? '',
                width: 80,
                height: 80,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
