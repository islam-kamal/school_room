import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeacherChatTextField extends StatelessWidget {
  const TeacherChatTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.12,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xff36A690),
            foregroundColor: Colors.white,
            child: IconButton(
              onPressed: () {
                // _showAlertDialogExamDegree(context);
                _showAlertDialogStudentDetails(context);
              },
              icon: const ImageIcon(AssetImage('assets/images/send.png')),
              tooltip: 'ارسال',
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.015,
          ),
          Expanded(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: const TextField(
                autocorrect: true,
                cursorColor: Color.fromARGB(255, 81, 77, 77),
                maxLines: 5,
                minLines: 1,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Color(0xffF0F0F3),
                    filled: true,
                    hintText: '...اكتب رسالة',
                    hintTextDirection: TextDirection.ltr,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          CircleAvatar(
            backgroundColor: Color(0xff36A690),
            foregroundColor: Colors.white,
            child: InkWell(
              onTap: (){
                _showAlertDialogExamPrepare(context);
              },
              child: const ImageIcon(
                AssetImage(
                  'assets/images/Microphone.png',
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              _showAlertDialogExamQuestion(context);
            },
            icon: const Icon(
              Icons.add,
              color: Color(0xff36A690),
            ),
          ),
        ],
      ),
    );
  }
}



void _showAlertDialogExamDegree(BuildContext context) {
  TextEditingController _textFieldController = TextEditingController();


  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
          content: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.67,
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
                                    'اسم الامتحان',
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
                      padding: const EdgeInsets.only(top: 18),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: BoxDecoration(
                          color: const Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Expanded(
                            flex: 6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Text(
                                      'وصف',
                                      style: GoogleFonts.cairo(
                                        color: Color(0xff6E6A7C),
                                        fontSize: 13,
                                      ),
                                    )),
                                const Expanded(
                                  flex: 5,
                                  child: TextField(
                                    maxLines: 4,
                                    textAlign: TextAlign.right,
                                    keyboardType: TextInputType.multiline,
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
                                          'assets/images/calendarr.png')),
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
                                              'تاريخ البدء',
                                              style: GoogleFonts.cairo(
                                                color: Color(0xff6E6A7C),
                                                fontSize: 13,
                                              ),
                                            ),
                                            Text(
                                              '01 May, 2022',
                                              style: GoogleFonts.cairo(
                                                color: Color(0xff24252C),
                                                fontSize: 14,
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
                              flex: 6,
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: InkWell(
                                        onTap: (){
                                          
                                        },
                                        child: Image.asset(
                                            'assets/images/calendarr.png'),
                                      )),
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
                                              'تاريخ التسليم',
                                              style: GoogleFonts.cairo(
                                                color: Color(0xff6E6A7C),
                                                fontSize: 13,
                                              ),
                                            ),
                                            Text(
                                              '30 June, 2022',
                                              style: GoogleFonts.cairo(
                                                color: Color(0xff24252C),
                                                fontSize: 14,
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
                                      'اختر ملف الامتحان',
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
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.height * 0.08,
                          decoration: BoxDecoration(
                            color: const Color(0xffEBEBEB),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Column(
                                children: [
                                  Text(
                                    'درجة الاختبار',
                                    style: GoogleFonts.cairo(
                                          color: Color(0xff6E6A7C),
                                          fontSize: 13,
                                        ),
                                                ),
                                                SizedBox(
                                                  height: MediaQuery.of(context).size.height * 0.007,
                                                ),
                                                Text(
                                                  '25',
                                                  style: TextStyle(
                                  color: const Color(0xff24252C),
                                  fontSize: 20,
                                ),
                                                ),
                                ],
                              ),
                            )
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




void _showAlertDialogExamPrepare(BuildContext context) {
  TextEditingController _textFieldController = TextEditingController();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
          content: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.57,
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
                                    'اسم الامتحان',
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
                      padding: const EdgeInsets.only(top: 18),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: BoxDecoration(
                          color: const Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Expanded(
                            flex: 6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Text(
                                      'وصف',
                                      style: GoogleFonts.cairo(
                                        color: Color(0xff6E6A7C),
                                        fontSize: 13,
                                      ),
                                    )),
                                const Expanded(
                                  flex: 5,
                                  child: TextField(
                                    maxLines: 4,
                                    textAlign: TextAlign.right,
                                    keyboardType: TextInputType.multiline,
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
                                          'assets/images/calendarr.png')),
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
                                              'تاريخ البدء',
                                              style: GoogleFonts.cairo(
                                                color: Color(0xff6E6A7C),
                                                fontSize: 13,
                                              ),
                                            ),
                                            Text(
                                              '01 May, 2022',
                                              style: GoogleFonts.cairo(
                                                color: Color(0xff24252C),
                                                fontSize: 14,
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
                              flex: 6,
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Image.asset(
                                          'assets/images/calendarr.png')),
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
                                              'تاريخ التسليم',
                                              style: GoogleFonts.cairo(
                                                color: Color(0xff6E6A7C),
                                                fontSize: 13,
                                              ),
                                            ),
                                            Text(
                                              '30 June, 2022',
                                              style: GoogleFonts.cairo(
                                                color: Color(0xff24252C),
                                                fontSize: 14,
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
                                      'اختر ملف الامتحان',
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



void _showAlertDialogExamQuestion(BuildContext context) {
  TextEditingController _textFieldController = TextEditingController();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
          content:  Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.52,
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
                      padding: const EdgeInsets.only(top: 18),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: BoxDecoration(
                          color: const Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Expanded(
                            flex: 6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Text(
                                      'الأجابة',
                                      style: GoogleFonts.cairo(
                                        color: Color(0xff6E6A7C),
                                        fontSize: 13,
                                      ),
                                    )),
                                const Expanded(
                                  flex: 5,
                                  child: TextField(
                                    maxLines: 4,
                                    textAlign: TextAlign.right,
                                    keyboardType: TextInputType.multiline,
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



void _showAlertDialogStudentDetails(BuildContext context) {
  TextEditingController _textFieldController = TextEditingController();


  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
          content: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.567,
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
                                    'اسم الطالب',
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
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
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
                                      'الصف',
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
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
                                      'الفصل',
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
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
                                      'مشاهدة ملف الامتحان',
                                      style: GoogleFonts.cairo(
                                          color: Color(0xff000000),
                                          fontSize: 15,
                                          decoration: TextDecoration.underline
                                          ),
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
                                          'assets/images/calendarr.png')),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.01,
                                  ),
                                  Expanded(
                                      flex: 5,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.symmetric(vertical: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'تاريخ التسليم',
                                              style: GoogleFonts.cairo(
                                                color: Color(0xff6E6A7C),
                                                fontSize: 13,
                                              ),
                                            ),
                                            Text(
                                              '30 June, 2022',
                                              style: GoogleFonts.cairo(
                                                color: Color(0xff24252C),
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ],
                              )),
                        ),
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.height * 0.08,
                          decoration: BoxDecoration(
                            color: const Color(0xffEBEBEB),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Column(
                                children: [
                                  Text(
                                    'درجة الاختبار',
                                    style: GoogleFonts.cairo(
                                          color: const Color(0xff6E6A7C),
                                          fontSize: 13,
                                        ),
                                                ),
                                                SizedBox(
                                                  height: MediaQuery.of(context).size.height * 0.007,
                                                ),
                                                const Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      '00/',
                                                      style: TextStyle(
                                  color: Color(0xff24252C),
                                  fontSize: 20,
                                ),
                                                    ),
                                                    Text(
                                                      '25',
                                                      style: TextStyle(
                                  color: Color(0xff989898),
                                  fontSize: 20,
                                ),
                                                    ),
                                                  ],
                                                ),
                                ],
                              ),
                            )
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
