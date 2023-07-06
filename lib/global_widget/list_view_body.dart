import 'package:flutter/material.dart';

class ListViewBody extends StatefulWidget {
  const ListViewBody({super.key});

  @override
  State<ListViewBody> createState() => _ListViewBodyState();
}

class _ListViewBodyState extends State<ListViewBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(color: Colors.white),
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 25,
                child: Image.asset(
                  "assets/images/world.png",
                ),
              ),
              title: const Text("Name",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold
              ),),
              subtitle: const Text("last seen recently",
              style: TextStyle(
                fontSize: 12
              ),),
              
            );
          }),
          
    );
  }
}
