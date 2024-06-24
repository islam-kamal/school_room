import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneTextField extends StatelessWidget{
  const PhoneTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'رقم الهاتف',
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
                  keyboardType: TextInputType.phone,
                  decoration:  InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                      border: InputBorder.none,
                    hintText: "009665254785",
                      hintStyle: TextStyle(fontWeight: FontWeight.normal,fontSize: 14)

                  ),
                ),
              ),
            ],
          );
  }
}