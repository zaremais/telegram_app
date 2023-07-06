import 'package:flutter/material.dart';

class ImageGroupBody extends StatelessWidget {
  const ImageGroupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 350,
              child: TextField(decoration: InputDecoration(
           
                suffixIcon: Icon(Icons.face_2_outlined)
              ),
              ),
            ),
          ]),
    );
  }
}
