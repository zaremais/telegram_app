import 'package:flutter/material.dart';

class GroupListViewBody extends StatelessWidget {
  const GroupListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  child: Image.asset(
                    "assets/images/frame.png",
                  ),
                ),
                title: const Text("Name"),
                subtitle: const Text("last seen recently"));
          }),
    );
  }
}
