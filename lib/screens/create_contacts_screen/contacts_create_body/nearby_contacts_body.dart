import 'package:flutter/material.dart';

class ConactsNearbyBody extends StatelessWidget {
  const ConactsNearbyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(left: 25),
      height: 50,
      child: const Row(
        children: [
          Icon(Icons.person_pin_circle_outlined,
          color: Colors.grey,),
          SizedBox(width: 15,),
          Text("Find People Nearby",
          style: TextStyle(
            fontSize: 12
          ),)
        ],
      ),
      
    );
  }
}