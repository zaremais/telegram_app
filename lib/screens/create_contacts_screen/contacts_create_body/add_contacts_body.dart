import 'package:first_app_1/global_widget/arrow_button.dart';
import 'package:first_app_1/screens/create_contacts_screen/contacts_create_body/add_contacts_text_field.dart';
import 'package:first_app_1/screens/create_contacts_screen/contacts_create_body/city_contacts_body.dart';
import 'package:first_app_1/screens/create_contacts_screen/contacts_create_body/number_contacts_body.dart';
import 'package:flutter/material.dart';

class AddContactsBody extends StatelessWidget {
  const AddContactsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const ArrowButton(),
        title: const Text("Add Contacts",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
        actions: const [
          Icon(Icons.check_outlined,
          color: Colors.white,)
        ],
      ),
      body:  const Column(
        children: [
          AddContactsTextField(),
          SizedBox(height: 20,),
          CityContactsBody(),
         NumberContactsBody(),
        ],
      )
      
      

    );
  }
}