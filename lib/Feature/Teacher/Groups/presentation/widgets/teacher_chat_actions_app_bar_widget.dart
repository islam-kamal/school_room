import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeacherChatActionsAppBar extends StatelessWidget{
  const TeacherChatActionsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(left: 18 , top: 8,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 2,
                    offset: const Offset(0, 0.5),
                  )
                ]
              ),
                    child: InkWell(
                      onTap: (){
                        _showAlertDialogSolveExamQuestion(context);
                      },
                      child: const CircleAvatar(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        child: ImageIcon(
                          AssetImage(
                            'assets/images/threePoints.png',
                            )
                        ),
                      ),
                    ),
                  ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.034,
                    ),
                     Row(
                      children: [
                        InkWell(
                          onTap: (){},
                          child: GestureDetector(
                            onTap: (){
                              _showAlertDialogSendExamSucessful(context);
                            },
                            child: const ImageIcon(
                                         AssetImage('assets/images/vedio.png')
                                    ),
                          ),
                        ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.07,
                    ),
                    GestureDetector(
                      onTap: (){
                        _showAlertDialogSendExamError(context);
                      },
                      child: const ImageIcon(
                      AssetImage('assets/images/phonee.png')
                                      ),
                    ),
                      ],
                    )
                ],
              ),
            );
  }
}


void _showAlertDialogSendExamSucessful(BuildContext context) {
    TextEditingController _textFieldController = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
         content: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
           child: Padding(
             padding: const EdgeInsets.symmetric(vertical: 22),
             child: SingleChildScrollView(
               child: Column(
                children: [
                  Image.asset(
                'assets/images/succes-validation-nxPvtk8St9.png'
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                        'تم ارسال الامتحان بنجاح',
                        style: GoogleFonts.cairo(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                       ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                     width: MediaQuery.of(context).size.width * 0.25,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                         textStyle: GoogleFonts.cairo(
                          fontSize: 24,
                          fontWeight: FontWeight.w300
                         ),
                          backgroundColor: Color.fromARGB(255, 85, 188, 165),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text('تم'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                  ),
                ],
               ),
             ),
           ),
         )
        );
      },
    );
  }


void _showAlertDialogSendExamError(BuildContext context) {
    TextEditingController _textFieldController = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
         content: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.47,
           child: Padding(
             padding: const EdgeInsets.symmetric(vertical: 22),
             child: SingleChildScrollView(
               child: Column(
                children: [
                  Image.asset(
                'assets/images/infoError.png'
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                        'حدث خطا ما',
                        style: GoogleFonts.cairo(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                       ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                     width: MediaQuery.of(context).size.width * 0.5,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                         textStyle: GoogleFonts.cairo(
                          fontSize: 24,
                          fontWeight: FontWeight.w300
                         ),
                          backgroundColor: Color(0xffFF0000),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text('اعادة المحاولة'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                  ),
                ],
               ),
             ),
           ),
         )
        );
      },
    );
  }



void _showAlertDialogSolveExamQuestion(BuildContext context) {
  TextEditingController _textFieldController = TextEditingController();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
          content: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.68,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                        color: const Color(0xffEBEBEB),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text(
                                    'السؤال',
                                    style: GoogleFonts.cairo(
                                      color: Color(0xff6E6A7C),
                                      fontSize: 13,
                                    ),
                                  )),
                              const Expanded(
                                flex: 1,
                                child: TextField(
                                  textAlign: TextAlign.right,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                   Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                            color: const Color(0xffEBEBEB),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 16),
                            child: Text(
                              'الاختيار الأول',
                              style: GoogleFonts.cairo(
                                fontSize: 13,
                                color: Color(0xff6E6A7C)
                              ),
                            ),
                            ),
                        ),
                      ),
                   ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                            color: const Color(0xffEBEBEB),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 16),
                            child: Text(
                              'الاختيار الثاني',
                              style: GoogleFonts.cairo(
                                fontSize: 13,
                                color: Color(0xff6E6A7C)
                              ),
                            ),
                            ),
                        ),
                      ),
                   ),
                   Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                            color: const Color(0xffEBEBEB),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 16),
                            child: Text(
                              'الاختيار الثالث',
                              style: GoogleFonts.cairo(
                                fontSize: 13,
                                color: Color(0xff6E6A7C)
                              ),
                            ),
                            ),
                        ),
                      ),
                   ),
                   Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                            color: const Color(0xffEBEBEB),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'اضافة اختيار جديد',
                                style: GoogleFonts.cairo(
                                  fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: Color(0xff6E6A7C)
                              ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.008,
                              ),
                              // Icon(Icons.add_circle)
                              InkWell(
                                onTap: (){},
                                child: const ImageIcon(
                                  AssetImage(
                                    'assets/images/IconPlus.png'
                                  ),
                                ),
                              ),
                            ],
                          )
                        ),
                      ),
                   ),
                    Text(
                     'ملحوظة : تظهر الاجابة بعد انتهاء مدة السؤال تلقائيا للطلبة',
                      style: GoogleFonts.cairo(
                                color: Color(0xff24252C),
                                fontSize: 12,
                              ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: BoxDecoration(
                          color: const Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                          child: Expanded(
                              flex: 6,
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Image.asset(
                                          'assets/images/timer.png')),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.01,
                                  ),
                                  Expanded(
                                      flex: 4,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.symmetric(vertical: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'مدة السؤال',
                                              style: GoogleFonts.cairo(
                                                color: Color(0xff6E6A7C),
                                                fontSize: 13,
                                              ),
                                            ),
                                            Text(
                                              'عشرين دقيقة',
                                              style: GoogleFonts.cairo(
                                                color: Color(0xff24252C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      onTap: () {},
                                      child: const ImageIcon(
                                        AssetImage('assets/images/ArrowDown.png'),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: BoxDecoration(
                          color: const Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                          child: Expanded(
                            flex: 5,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: InkWell(
                                    onTap: (){},
                                    child: Text(
                                      'اختر ملف ',
                                      style: GoogleFonts.cairo(
                                          color: Color(0xff6E6A7C),
                                          fontSize: 15,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){},
                                    child: Image.asset(
                                      'assets/images/attachSquare.png'
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.26,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Text(
                        'الغاء',
                        style: GoogleFonts.cairo(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        // You can handle the submit action here
                        print('Entered text: ${_textFieldController.text}');
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.26,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff33A88E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'ارسال',
                        style: GoogleFonts.cairo(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
      );
    },
  );
}