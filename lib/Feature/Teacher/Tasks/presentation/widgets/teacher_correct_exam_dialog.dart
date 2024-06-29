import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Base/common/shared.dart';
import 'package:school_room/Base/common/theme.dart';

class TeacherCorrectExamDailog extends StatelessWidget {
  TextEditingController _nametextFieldController = TextEditingController();
  TextEditingController _rowtextFieldController = TextEditingController();
  TextEditingController _classtextFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: kWhiteColor,
      content: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: Shared.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5)
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kInactiveColor,
                      ),
                      child: TextFormField(
                        controller: _nametextFieldController,
                        textAlign: TextAlign.right,
                        autocorrect: true,
                        autofocus: false,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(
                            decorationStyle: TextDecorationStyle.solid,
                            overflow: TextOverflow.ellipsis,
                            color: Colors.black,
                          ),
                          labelText: 'اسم الطالب',
                          floatingLabelAlignment: FloatingLabelAlignment.start,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          prefixIconConstraints:
                              BoxConstraints(minWidth: 0, minHeight: 0),
                        ),
                      )),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kInactiveColor,
                        ),
                        child: TextFormField(
                          controller: _rowtextFieldController,
                          textAlign: TextAlign.right,
                          autocorrect: true,
                          autofocus: false,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            labelStyle: TextStyle(
                              decorationStyle: TextDecorationStyle.solid,
                              overflow: TextOverflow.ellipsis,
                              color: Colors.black,
                            ),
                            labelText: 'الصف',
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            prefixIconConstraints:
                                BoxConstraints(minWidth: 0, minHeight: 0),
                          ),
                        ))),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kInactiveColor,
                        ),
                        child: TextFormField(
                          controller: _classtextFieldController,
                          textAlign: TextAlign.right,
                          autocorrect: true,
                          autofocus: false,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            labelStyle: TextStyle(
                              decorationStyle: TextDecorationStyle.solid,
                              overflow: TextOverflow.ellipsis,
                              color: Colors.black,
                            ),
                            labelText: 'الفصل',
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            prefixIconConstraints:
                                BoxConstraints(minWidth: 0, minHeight: 0),
                          ),
                        ))),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.08,
                    decoration: BoxDecoration(
                      color: kInactiveColor,
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
                              flex: 5,
                              child: InkWell(
                                onTap: () {},
                                child: Text(
                                  'مشاهدة ملف الامتحان',
                                  style: GoogleFonts.cairo(
                                      color: Color(0xff000000),
                                      fontSize: 15,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () {},
                                child: Image.asset(
                                    'assets/images/attach-square.png'),
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
                      color: kInactiveColor,
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
                                      'assets/images/calendar.png')),
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
                        color: kInactiveColor,
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
                                  height: MediaQuery.of(context).size.height *
                                      0.007,
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
                          )),
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
                      color: kWhiteColor,
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
  }
}
