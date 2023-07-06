import 'package:flutter/material.dart';

class InviteBody extends StatefulWidget {
  const InviteBody({super.key});

  @override
  State<InviteBody> createState() => _InviteBodyState();
}

class _InviteBodyState extends State<InviteBody> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      
      decoration: InputDecoration(
      contentPadding: EdgeInsets.only(left: 10),
      hintText: 'Кого бы Вы хотели пригласить?',
      hintStyle: TextStyle(
        color: Colors.grey,
        
      ),
      ),
    );
  }
}
