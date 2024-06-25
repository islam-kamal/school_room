import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordTextField extends StatelessWidget{
  const PasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'كلمة المرور',
                  style: GoogleFonts.cairo(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                  ),
              ),
              SizedBox(
                    height: MediaQuery.of(context).size.height * 0.006,
                  ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color.fromARGB(255, 215, 212, 212),
                    ),
                ),
                child: const TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration:  InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      border: InputBorder.none,
                    hintText: "................",
                      hintStyle: TextStyle(fontWeight: FontWeight.normal,fontSize: 14)

                  ),
                ),
              ),
            ],
          );
  }
}