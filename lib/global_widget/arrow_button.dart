import 'package:flutter/material.dart';

class ArrowButton extends StatelessWidget {
  const ArrowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
    );
  }
}
