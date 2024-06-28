import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExamDegreesScreenTitleAppBar extends StatefulWidget{
  const ExamDegreesScreenTitleAppBar({super.key});

  @override
  State<ExamDegreesScreenTitleAppBar> createState() => _ExamDegreesScreenTitleAppBarState();
}

class _ExamDegreesScreenTitleAppBarState extends State<ExamDegreesScreenTitleAppBar> {

Color _colorContainer1  = Colors.white;
Color _colorContainer2  = Colors.white;
Color _colorContainer3  = Colors.white;
Color _textColorContainer1  = const Color(0xff717171);
Color _textColorContainer2  = const Color(0xff717171);
Color _textColorContainer3  = const Color(0xff717171);

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                        setState(() {
                      _colorContainer1 = _colorContainer1 == Colors.white ? 
                            const Color(0xff4285F4) : 
                            Colors.white;
                            // _textColorContainer1 = _textColorContainer1 == const Color(0xff717171), ? 
                            // Colors.white : 
                            // const Color(0xff717171),;
                    });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * 0.048,
                      decoration: BoxDecoration(
                        color: _colorContainer1,
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child: Center(
                        child: Text(
                          'تمت',
                          style: GoogleFonts.cairo(
                            fontSize: 21,
                            color: _textColorContainer1,
                          ),
                          ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                       setState(() {
                      _colorContainer2 = _colorContainer2 == Colors.white ? 
                            Color(0xffE82F2F) : 
                            Colors.white;
                            // _textColorContainer2 = _textColorContainer2 == const Color(0xff717171), ? 
                            // Colors.white : 
                            // const Color(0xff717171),;
                    });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * 0.048,
                      decoration: BoxDecoration(
                        color: _colorContainer2,
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child: Center(
                        child: Text(
                          'لم تصحح',
                          style: GoogleFonts.cairo(
                            fontSize: 22,
                            color: _textColorContainer1,
                          ),
                          ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                       setState(() {
                      _colorContainer3 = _colorContainer3 == Colors.white ? 
                            const Color(0xff36A690) : 
                            Colors.white;
                            // _textColorContainer3 = _textColorContainer3 == const Color(0xff717171) ? 
                            // Colors.white : 
                            // const Color(0xff717171);
                    });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * 0.048,
                      decoration: BoxDecoration(
                        color:  _colorContainer3,
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child: Center(
                        child: Text(
                          'الدرجات',
                          style: GoogleFonts.cairo(
                            fontSize: 22,
                            color: _textColorContainer1,
                          ),
                          ),
                      ),
                    ),
                  ),
                ],
              );
  }
}