import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Base/common/theme.dart';
import 'package:school_room/Feature/Teacher/Tasks/presentation/widgets/Assignments/send_exam_successfully_dialog.dart';
import 'package:school_room/Widgets/custom_textformfield_widget.dart';

class CreateAssignmentDialog extends StatelessWidget{
  TextEditingController _nameTextFieldController = TextEditingController(text: "امتحان اللغة العربية");
  TextEditingController _descriptionTextFieldController =
  TextEditingController(text: "تصميم هذا التطبيق للمتاجر الكبرى. وباستخدام هذا التطبيق، يمكنهم إدراج جميع منتجاتهم في مكان واحد وتوصيلها. وسيحصل العملاء على حل شامل للتسوق اليومي.");

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      surfaceTintColor: Colors.transparent,
      backgroundColor: kWhiteColor,
      insetPadding: EdgeInsets.symmetric(horizontal: 20),
      content: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.67,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextFormFieldWidget(
                  controller: TextEditingController(text: "امتحان اللغة العربية"),
                  labelText: 'اسم الامتحان',
                ),
                CustomTextFormFieldWidget(
                  controller: TextEditingController(text: "تصميم هذا التطبيق للمتاجر الكبرى. وباستخدام هذا التطبيق، يمكنهم إدراج جميع منتجاتهم في مكان واحد وتوصيلها. وسيحصل العملاء على حل شامل للتسوق اليومي."),
                  labelText: 'وصف',
                  maxLines: 3,
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
                      child:  Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: ()async{
                                      final now = DateTime.now();
                                      final firstDate = DateTime(now.year ,now.month ,now.day);
                                      final DateTime? pickedDate = await showDatePicker(
                                        context: context,
                                        initialDate: now,
                                        firstDate: firstDate,
                                        lastDate: DateTime(2045),
                                      );
                                    },
                                    child: Image.asset(
                                        'assets/images/calendar.png',scale: 2.5,),
                                  )),
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
                                  onTap: ()async{
                                    final now = DateTime.now();
                                    final firstDate = DateTime(now.year-1 ,now.month ,now.day);
                                    final DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: now,
                                      firstDate: firstDate,
                                      lastDate: now,
                                    );
                                  },
                                  child: const ImageIcon(
                                    AssetImage('assets/images/ArrowDown.png'),
                                  ),
                                ),
                              ),
                            ],
                          )),

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
                      child:  Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: ()async{
                                      final now = DateTime.now();
                                      final firstDate = DateTime(now.year-1 ,now.month ,now.day);
                                      final DateTime? pickedDate = await showDatePicker(
                                        context: context,
                                        initialDate: now,
                                        firstDate: firstDate,
                                        lastDate: now,
                                      );
                                    },
                                    child: Image.asset(
                                        'assets/images/calendar.png',scale: 2.5,),
                                  )),
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
                                  onTap: ()async{
                                    final now = DateTime.now();
                                    final firstDate = DateTime(now.year ,now.month ,now.day);
                                    final DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: now,
                                      firstDate: firstDate,
                                      lastDate: now,
                                    );
                                  },
                                  child: const ImageIcon(
                                    AssetImage('assets/images/ArrowDown.png'),
                                  ),
                                ),
                              ),
                            ],
                          )),

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
                                    'assets/images/attach-square.png',scale: 2.5,
                                ),
                              ),
                            ),
                          ],
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
                    print('Entered text: ${_nameTextFieldController.text}');
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
                  onPressed: () {
                    Navigator.pop(context);
                    showDialog(context: context, builder: (context){
                      return SendExamSuccessfullyDialog();
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );

  }

}