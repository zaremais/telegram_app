import 'package:flutter/material.dart';

class CreateContactsScreen extends StatelessWidget {
  const CreateContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(Icons.arrow_back_ios),
          ),
          title: Text('Hello'),
          backgroundColor: Colors.black,
      ),
    );
  }
}