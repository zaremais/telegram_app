import 'package:flutter/material.dart';

class ImageGroupBody extends StatelessWidget {
  const ImageGroupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.add_a_photo,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 10,),
            SizedBox(
              width: 280,
              child: Padding(
                padding: EdgeInsets.only(right: 20),

                child: TextField(
                  decoration:
                      InputDecoration(
                        hintText: "Enter group name",
                        suffixIcon: Icon(Icons.face_2_outlined)),
                ),
              ),
            ),
          ]),
    );
  }
}
