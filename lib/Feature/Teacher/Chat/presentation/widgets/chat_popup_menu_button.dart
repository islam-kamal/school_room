import 'package:flutter/material.dart';

/*
class ChatPopupMenuButton extends StatelessWidget {
  const ChatPopupMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      onSelected: (int result) {
        // Handle your logic here based on the selected menu item
      },
      child:  const Icon(
        Icons.add,
        color: Color(0xff36A690),
      ),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
        const PopupMenuItem<int>(
          value: 0,
          child: Row(
            children: [
           //   Icon(Icons.check_circle_outline),
              CircleAvatar(
                backgroundColor: Color(0xff36A690),
                foregroundColor: Colors.white,
                child:  ImageIcon(AssetImage("assets/images/Camera.png"))

              ),
              SizedBox(width: 8),
              Text('الكاميرا'),
            ],
          ),
        ),
        const PopupMenuItem<int>(
          value: 1,
          child: Row(
            children: [
              CircleAvatar(
                  backgroundColor: Color(0xff36A690),
                  foregroundColor: Colors.white,
                  child:  ImageIcon(AssetImage("assets/images/gallery.png"))

              ),              SizedBox(width: 8),
              Text('المعرض'),
            ],
          ),
        ),
        const PopupMenuItem<int>(
          value: 2,
          child: Row(
            children: [
              CircleAvatar(
                  backgroundColor: Color(0xff36A690),
                  foregroundColor: Colors.white,
                  child:  ImageIcon(AssetImage("assets/images/document.png"))

              ),                 SizedBox(width: 8),
              Text('المستند'),
            ],
          ),
        ),
        const PopupMenuItem<int>(
          value: 3,
          child: Row(
            children: [
              CircleAvatar(
                  backgroundColor: Color(0xff36A690),
                  foregroundColor: Colors.white,
                  child:  ImageIcon(AssetImage("assets/images/add.png"))

              ),
              SizedBox(width: 8),
              Text('اعداد'),
            ],
          ),
        ),
      ],
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:school_room/Base/common/shared.dart';

class ChatPopupMenuButton extends StatelessWidget {
  const ChatPopupMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.add,
        color: Color(0xff36A690),
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Stack(children: [
              Positioned(
                  bottom: Shared.width * 0.2,
                  left: 0,
                  right: 0,
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),

                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          height: Shared.width * 0.35,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                  onTap: () {},
                                  child: _buildDialogOption(
                                    context,
                                    "assets/images/add.png",
                                    'اعداد',
                                  )),
                              InkWell(
                                  onTap: () {},
                                  child: _buildDialogOption(
                                    context,
                                    "assets/images/document.png",
                                    'المستند',
                                  )),
                              InkWell(
                                  onTap: () {},
                                  child: _buildDialogOption(
                                    context,
                                    "assets/images/gallery.png",
                                    'المعرض',
                                  )),
                              InkWell(
                                onTap: () {},
                                child: _buildDialogOption(
                                  context,
                                  "assets/images/Camera.png",
                                  'الكاميرا',
                                ),
                              ),
                            ],
                          ),
                        ),
                      )))
            ]);
          },
        );
      },
    );
  }

  Widget _buildDialogOption(
      BuildContext context, String imagePath, String text) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        // Handle your logic here based on the selected menu item
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: Color(0xff36A690),
            foregroundColor: Colors.white,
            child: ImageIcon(AssetImage(imagePath)),
          ),
          SizedBox(height: 8),
          Text(text),
        ],
      ),
    );
  }
}
