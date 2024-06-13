import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentTasksTitleAppBar extends StatefulWidget{
  const StudentTasksTitleAppBar({super.key});

  @override
  State<StudentTasksTitleAppBar> createState() => _StudentTasksTitleAppBarState();
}

class _StudentTasksTitleAppBarState extends State<StudentTasksTitleAppBar> {

Color _colorContainer1  = Colors.white;
Color _colorContainer2  = Colors.white;
Color _colorContainer3  = Colors.white;
Color _textColorContainer1  = Colors.black;
Color _textColorContainer2  = Colors.black;
Color _textColorContainer3  = Colors.black;



  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
               Row(
                children: [
                   Align(
            alignment: Alignment.topRight,
            child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 2,
                    offset: const Offset(0, 0.5),
                  ),
                ],
              ),
              child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: ImageIcon(
                      color: Colors.black,
              AssetImage(
              'assets/images/icon_back.png',
              ),
                      ),
                  ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.27,
          ),
          Text(
            'المهام',
            style: GoogleFonts.cairo(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
            Padding(
              padding: const EdgeInsets.only(right: 11 , left: 11 , top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                        setState(() {
                      _colorContainer1 = _colorContainer1 == Colors.white ? 
                            const Color.fromARGB(255, 87, 168, 235) : 
                            Colors.white;
                            // _textColorContainer1 = _textColorContainer1 == Colors.black ? 
                            // Colors.white : 
                            // Colors.black;
                    });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      height: MediaQuery.of(context).size.height * 0.048,
                      decoration: BoxDecoration(
                        color: _colorContainer1,
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child: Center(
                        child: Text(
                          'مكلف',
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
                            const Color.fromARGB(255, 255, 101, 90) : 
                            Colors.white;
                            // _textColorContainer2 = _textColorContainer2 == Colors.black ? 
                            // Colors.white : 
                            // Colors.black;
                    });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      height: MediaQuery.of(context).size.height * 0.048,
                      decoration: BoxDecoration(
                        color: _colorContainer2,
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child: Center(
                        child: Text(
                          'انتهى',
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
                      _colorContainer3 = _colorContainer3 == Colors.white ? 
                            const Color(0xff31AB8D) : 
                            Colors.white;
                            // _textColorContainer3 = _textColorContainer3 == Colors.black ? 
                            // Colors.white : 
                            // Colors.black;
                    });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      height: MediaQuery.of(context).size.height * 0.048,
                      decoration: BoxDecoration(
                        color:  _colorContainer3,
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
                ],
              ),
            ),
            ],
          );
  }
}