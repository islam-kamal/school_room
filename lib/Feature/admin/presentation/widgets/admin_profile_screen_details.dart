import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Feature/admin/presentation/widgets/country_text_field.dart';
import 'package:school_room/Feature/admin/presentation/widgets/email_text_field.dart';
import 'package:school_room/Feature/admin/presentation/widgets/image_of_profile_widget.dart';
import 'package:school_room/Feature/admin/presentation/widgets/name_text_field.dart';
import 'package:school_room/Feature/admin/presentation/widgets/password_text_field.dart';
import 'package:school_room/Feature/admin/presentation/widgets/phone_text_field.dart';

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.003,
              ),
              const ImageOfProfile(),
                Padding(
                padding: const EdgeInsets.only(right: 16 , left: 16 , bottom: 22),
                child: Column(
                  children: [
                    const NameTextField(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.013,
                    ),
                    const EmailTextField(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.013,
                    ),
                    const PasswordTextField(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.013,
                    ),
                    const PhoneTextField(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.013,
                    ),
                    const CountryTextField(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.66,
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
                    child: Text(
                      'حفظ التغييرات',
                      style: GoogleFonts.cairo(
                        fontSize: 20
                      ),
                      ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
              ),
                  ],
                ),
              )
            ],
          ),
        ),
       )
       );
  }
}