import 'package:first_app_1/global_widget/arrow_button.dart';
import 'package:first_app_1/global_widget/list_view_body.dart';
import 'package:flutter/material.dart';
import 'create_group_second_page_body/image_group_body.dart';

class CreateGroupSecondPage extends StatelessWidget {
  const CreateGroupSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 239, 239),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const ArrowButton(),
        title: const Text(
          "New Group",
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
        },
        child: const Icon(
          Icons.check,
          color: Colors.white,
        ),
      ),
      body: const Column(
        children: [
          ImageGroupBody(),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListViewBody(),
          ),
        ],
      ),
    );
  }
}
