import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminProfileScreenDetails extends StatelessWidget{
  const AdminProfileScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
       child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Icon(Icons.arrow_back_ios_new),
          centerTitle: true,
          title: Text(
            'الملف الشخصي',
            style: GoogleFonts.cairo(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.009,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Rectangle111.png')
              ],
            )
          ],
        ),
       )
       );
  }
}