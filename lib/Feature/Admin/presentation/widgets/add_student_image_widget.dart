import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class AddStudentImageWidget extends StatefulWidget{
  const AddStudentImageWidget({super.key});

  @override
  State<AddStudentImageWidget> createState() => _AddStudentImageWidgetState();
}

class _AddStudentImageWidgetState extends State<AddStudentImageWidget> {

  File? _selectImage;

  _takePicture() async{
    final imagePicker = ImagePicker();
    final XFile? pickedImage = await imagePicker.pickImage(
      source: ImageSource.camera,
      maxWidth: 600,
    );
    if(pickedImage == null){
      return;
    }
    setState(() {
      _selectImage = File(pickedImage.path);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        onTap: (){},
        child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.42,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 53,
                    child: Image.asset(
                      'assets/images/Rectangle111.png',
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 0.6,
                    )),
              ),
              Positioned(
                bottom: -14,
                left: 0,
                child: IconButton(
                  onPressed: _takePicture,
                  icon: const Icon(
                    Icons.camera_alt_rounded,
                    color: Color.fromARGB(255, 69, 71, 109),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}