import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Base/common/theme.dart';

class TeacherChatGroupsActionsAppBar extends StatelessWidget {
  const TeacherChatGroupsActionsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 18,
        top: 8,
      ),
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
                ]),
            child: const CircleAvatar(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              child: ImageIcon(AssetImage(
                'assets/images/threePoints.png',
              )),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.034,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  _showAlertDialog(context);
                },
                child: const ImageIcon(
                    AssetImage('assets/images/notification.png')),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              const Icon(
                Icons.keyboard_arrow_left_sharp,
                size: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}

void _showAlertDialog(BuildContext context) {
  TextEditingController _textFieldController = TextEditingController();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Align(
            alignment: Alignment.center,
            child: Text(
              'ارسال اشعار',
              style:
                  GoogleFonts.cairo(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        content: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.204,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                    color: kInactiveColor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 4),
                    child: Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                               child: Text(
                                'اسم المجموعة',
                                style: GoogleFonts.cairo(
                            color: Color(0xff6E6A7C),
                            fontSize: 13,
                           ),
                              )
                          ),
                          const Expanded(
                            flex: 1,
                            child: TextField(
                              textAlign: TextAlign.right,
                              autocorrect: false,
                              autofocus: true,
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
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      color: kInactiveColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 4),
                      child: Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                                 child: Text(
                                  'الرسالة',
                                  style: GoogleFonts.cairo(
                              color: Color(0xff6E6A7C),
                              fontSize: 13,
                             ),
                                )
                            ),
                            const Expanded(
                              flex: 2,
                              child: TextField(
                                maxLines: 2,
                                textAlign: TextAlign.right,
                                autocorrect: false,
                                autofocus: true,
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
              ],
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                   children:[
             SizedBox(
              width: MediaQuery.of(context).size.width * 0.23,
              height: MediaQuery.of(context).size.height * 0.05,
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
                      fontWeight: FontWeight.w500
                      ),
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
              width: MediaQuery.of(context).size.width * 0.23,
              height: MediaQuery.of(context).size.height * 0.05,
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
                    fontSize: 16,
                    color: kWhiteColor,
                    fontWeight: FontWeight.w500
                  ),
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
