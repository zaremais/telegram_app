import 'package:first_app_1/global_widget/arrow_button.dart';
import 'package:first_app_1/global_widget/list_view_body.dart';
import 'package:first_app_1/screens/create_contacts_screen/contacts_create_body/add_contacts_body.dart';
import 'package:first_app_1/screens/create_contacts_screen/contacts_create_body/invate_body.dart';
import 'package:first_app_1/screens/create_contacts_screen/contacts_create_body/nearby_contacts_body.dart';
import 'package:flutter/material.dart';

class CreateContactsScreen extends StatelessWidget {
  const CreateContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 239, 239),
      appBar: AppBar(
        leading: const ArrowButton(),
        title: const Text(
          'Contacts',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 30,
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContactsInviteBody(),
          ConactsNearbyBody(),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 5),
            child: Text("Sorted last seen time",
            style: TextStyle(
              color: Colors.grey
            ),
            
            ),
          ),
          
          SizedBox(
            height: 300,
            child: ListViewBody(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.push(
            context,
             MaterialPageRoute(
              builder: ((context) => const AddContactsBody())));
        },
        child: const Icon(
          
          Icons.people_alt_outlined,
          color: Colors.white,
         
        ),
      ),
    );
  }
}
