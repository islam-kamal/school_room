import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_room/Base/common/theme.dart';
import 'package:school_room/Feature/Father/Profile/presentation/widgets/country_text_field.dart';
import 'package:school_room/Feature/Father/Profile/presentation/widgets/email_text_field.dart';
import 'package:school_room/Feature/Father/Profile/presentation/widgets/image_of_profile_widget.dart';
import 'package:school_room/Feature/Father/Profile/presentation/widgets/name_text_field.dart';
import 'package:school_room/Feature/Father/Profile/presentation/widgets/password_text_field.dart';
import 'package:school_room/Feature/Father/Profile/presentation/widgets/phone_text_field.dart';

class ProfileScreenDetails extends StatelessWidget{
  const ProfileScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
       child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
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
                      backgroundColor: kGreenColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'حفظ التغييرات',
                      style: GoogleFonts.cairo(
                        fontSize: 20,
                        color: kWhiteColor
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