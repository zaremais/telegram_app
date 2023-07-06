import 'package:first_app_1/global_widget/arrow_button.dart';
import 'package:flutter/material.dart';

import 'create_group_second_page_body/image_group_body.dart';

class CreateGroupSecondPage extends StatelessWidget {
  const CreateGroupSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const ArrowButton(),
        title: const Text(
          "New Group",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
      children: const [
         ImageGroupBody(),
      ],
        
      ),
    
    );
  }
}
