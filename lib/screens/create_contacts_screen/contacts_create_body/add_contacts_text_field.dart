import 'package:flutter/material.dart';

class AddContactsTextField extends StatelessWidget {
  const AddContactsTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
     
      child: const Row(
          
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Column(
                children: [
                  CircleAvatar(
                    
                    backgroundColor: Colors.blue,
                    radius: 25,
                  ),
                ],
              ),
            ),
            SizedBox(width: 20,),
          Column(
            children: [
              SizedBox(
                    width: 200,
                    child: TextField(
                      decoration:
                          InputDecoration(
                            hintText: "First name(requred)",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 14
                            ),
                           ),
                    ),
                    
                    
              ),
              SizedBox(
                width: 200,
                child: TextField(
                  
                  decoration: InputDecoration(
                    hintText: "Last name(requred)",
                    
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.grey
                    )
                  ),
                ),
              )
            ],
          ),
       
         
           
          ],
          
      ),
      
    );
    
  }
}