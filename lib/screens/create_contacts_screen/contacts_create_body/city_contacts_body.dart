import 'package:flutter/material.dart';

class CityContactsBody extends StatelessWidget {
  const CityContactsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Kyrgyzstan",
            hintStyle: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}