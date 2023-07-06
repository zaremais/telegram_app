import 'package:first_app_1/telegram_screens/main_screen/main_screen_body/drawer_body.dart';
//import 'package:first_app_1/telegram_screens/main_screen/main_screen_body/list_main_body.dart';

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerBody(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
          title: const Text(
            "Telegram",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ))
          ],
        ),
        body: Column(
          children: [
            listBody(
              url: "assets/images/frame.png",
              name: "Lara",
              tym: '10:00 pm',
              desc: 'How are you',
              msg: '2',
              isRead: true,
            ),
            const Divider(
              height: 0.2,
            ),
               listBody(
              url: "assets/images/frame.png",
              name: "Lara",
              tym: '10:00 pm',
              desc: 'How are you',
              msg: '',
              isRead: false,
            ),
            const Divider(
              height: 0.2,
            ),
          ],
        ));
  }

  ListTile listBody(
      {required String url,
      required name,
      required String tym,
      required String desc,
      required String msg,
      required bool isRead,
      }) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 10, top: 15),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: ExactAssetImage(url),
      ),
      title: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            Text(
              tym,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              desc,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                   color: isRead ? Colors.green : Colors.white,
                   borderRadius: BorderRadius.circular(20),
                  ),
                 
              child: Center(
                  child: Text(
                msg,
                style: const TextStyle(fontSize: 12, color: Colors.white),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
