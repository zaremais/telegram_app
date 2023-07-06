import 'package:first_app_1/global_widget/arrow_button.dart';
import 'package:first_app_1/global_widget/list_view_body.dart';
// import 'package:first_app_1/screens/create_group_screen/create_group_screen_body/group_list_view.dart';
import 'package:first_app_1/screens/create_group_screen/create_group_screen_body/invite_body.dart';
import 'package:flutter/material.dart';

import 'create_group_second_page/create_group_second_page.dart';

class CreateGroupScreen extends StatelessWidget {
  const CreateGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading:
       const ArrowButton(),
        title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Создать группу",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                "до 200000 участников",
                style: TextStyle(fontSize: 14, color: Colors.white),
              )
            ]),
        centerTitle: false,
      ),
      body: const Column(children: [
        InviteBody(),
        Expanded(child: ListViewBody()),
      ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const CreateGroupSecondPage()));
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.arrow_forward,
          color: Color.fromARGB(255, 207, 200, 200),
        ),
      ),
    );
  }
}
