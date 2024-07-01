import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Base/common/theme.dart';
import 'package:school_room/Feature/Teacher/Tasks/presentation/widgets/Assignments/send_exam_successfully_dialog.dart';
import 'package:school_room/Widgets/custom_textformfield_widget.dart';

class CreateQuizDialog extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: kWhiteColor,
      surfaceTintColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 20),
      content:  Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.52,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextFormFieldWidget(
                  controller: TextEditingController(text: "سؤال في اللغة العربية"),
                  labelText:       'السؤال',
                ),
                CustomTextFormFieldWidget(
controller:   TextEditingController(text: "تصميم هذا التطبيق للمتاجر الكبرى. وباستخدام هذا التطبيق، يمكنهم إدراج جميع منتجاتهم في مكان واحد وتوصيلها. وسيحصل العملاء على حل شامل للتسوق اليومي."),
                  labelText: 'وصف',
                  maxLines: 3,
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
                      child:  Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Image.asset(
                                      'assets/images/timer.png',scale: 2.5,)),
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
                                    'assets/images/attach-square.png',scale: 2.5,
                                ),
                              ),
                            ),
                          ],
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