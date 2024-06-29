import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThreeContainerInDegrees extends StatelessWidget{
  const ThreeContainerInDegrees({
    super.key,
     required this.containerWidth,
      required this.containerName
      });

final double containerWidth;
final String containerName;

  @override
  Widget build(BuildContext context) {
    return  Container(
                      width: MediaQuery.of(context).size.width * containerWidth,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 206, 202, 202),
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                             Text(
                                containerName,
                                style: GoogleFonts.cairo(
                                  fontSize: 16,
                                ),
                                ),
                                InkWell(
                                  onTap: (){},
                                  child: const Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    ),
                                ),
                          ],
                        ),
                      ),
                    );
  }
}