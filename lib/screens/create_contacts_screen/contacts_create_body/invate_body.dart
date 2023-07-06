import 'package:flutter/material.dart';

class ContactsInviteBody extends StatelessWidget {
  const ContactsInviteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    padding: const EdgeInsets.only(left: 25),
      height: 50,
      child: const Row(
        children: [
          Icon(Icons.people_alt_outlined,
          color: Colors.grey,),
          SizedBox(width: 20,),
          Text("Invite Friends",
         ),
        ],
      ),
    );
  }
}
