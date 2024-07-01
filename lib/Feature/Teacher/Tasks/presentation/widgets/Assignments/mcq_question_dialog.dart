import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Base/common/shared.dart';
import 'package:school_room/Base/common/theme.dart';
import 'package:school_room/Feature/Teacher/Tasks/presentation/widgets/Assignments/send_exam_successfully_dialog.dart';
import 'package:school_room/Widgets/custom_textformfield_widget.dart';

class McqQuestionDialog extends StatefulWidget{
  @override
  State<McqQuestionDialog> createState() => _McqQuestionDialogState();
}

class _McqQuestionDialogState extends State<McqQuestionDialog> {
List<String> questions = ["الاختيار الأول","الاختيار الثانى","الاختيار الثالث",];
int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: kWhiteColor,
      surfaceTintColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius:
          BorderRadius.all(
              Radius.circular(10.0))),
      content:  Directionality(
        textDirection: TextDirection.rtl,
        child: Container(

          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextFormFieldWidget(
                  controller: TextEditingController(text: "سؤال في اللغة العربية"),
                  labelText:       'السؤال',
                ),

               SizedBox(
                 width: Shared.width ,
                 height: Shared.height * 0.25,
                 child: ListView.builder(
                     shrinkWrap: true,
                     itemCount: questions.length,
                     itemBuilder: (context,index){
                       return  Padding(
                         padding: const EdgeInsets.only(top: 12),
                         child: InkWell(
                           onTap: (){
                             setState(() {
                               currentIndex = index;
                             });
                           },
                           child: Container(
                             width: double.infinity,
                             height: MediaQuery.of(context).size.height * 0.06,
                             decoration: BoxDecoration(
                               color: kLightColor,
                               borderRadius: BorderRadius.circular(14),
                               border: Border.all(color: currentIndex == index ? kGreenColor : kInactiveColor)
                             ),
                             child: Padding(
                               padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 16),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text(
                                     questions[index],
                                     style: GoogleFonts.cairo(
                                         fontSize: 13,
                                         color: Color(0xff6E6A7C)
                                     ),
                                   ),
                                   currentIndex == index ?   Icon( Icons.check_circle_outlined,
                                     color: kGreenColor ,) : Container()
                                 ],
                               ),
                             ),
                           ),
                         ),
                       );
                     }),
               ),

                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                        width: Shared.width,
                        height: Shared.height * 0.06,
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
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: Color(0xff6E6A7C)
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            // Icon(Icons.add_circle)
                            InkWell(
                              onTap: (){},
                              child:Icon(Icons.add_circle,color: kGreyColor,size: 30,),
                            ),
                          ],
                        )
                    ),
                  ),
                ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
                  'ملحوظة : تظهر الاجابة بعد انتهاء مدة السؤال تلقائيا للطلبة',
                  style: GoogleFonts.cairo(
                    color: Color(0xff24252C),
                    fontSize: 12,
                  )  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Container(
                    width: Shared.width,
                    height: Shared.height * 0.08,
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
                                      'assets/images/timer.png',scale: 2.0,)),
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
                                    'assets/images/attach-square.png',scale: 2.0
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
                width: Shared.width * 0.26,
                height:Shared.height * 0.06,
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
                width: Shared.width * 0.03,
              ),
              SizedBox(
                width: Shared.width * 0.26,
                height: Shared.height * 0.06,
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