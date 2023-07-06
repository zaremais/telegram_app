import 'package:flutter/material.dart';

class NumberContactsBody extends StatelessWidget {
  const NumberContactsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: TextField(
          decoration: InputDecoration(
            hintText: "+996      _ _ _  _ _ _ _ _ _ ",
            hintStyle: TextStyle(
              color: Colors.black,
              fontSize: 14,
            )
          ),
        ),
      ),
    );
  }
}