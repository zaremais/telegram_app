import 'package:first_app_1/screens/create_contacts_screen/create_contacts_screen.dart';
import 'package:first_app_1/screens/create_group_screen/create_group_screen.dart';

import 'package:flutter/material.dart';


class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [_ContainerWithImage(), ListSettings()],
      ),
    );
  }
}

class _ContainerWithImage extends StatelessWidget {
  const _ContainerWithImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.blue,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                  ),
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.sunny_snowing))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bai",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "1111111",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 30,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListSettings extends StatefulWidget {
  const ListSettings({super.key});

  @override
  State<ListSettings> createState() => _ListSettingsState();
}

class _ListSettingsState extends State<ListSettings> {
  _ListSettingsState();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 390,
      child: ListView(children: [
        ListSettingsBody(
          text: "New group",
          iconData: Icons.people_alt_outlined,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const CreateGroupScreen()));
          },
        ),
        ListSettingsBody(
          text: "Contact",
          iconData: Icons.account_box_outlined,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
            
                builder: (context) => const CreateContactsScreen()));
          },
        ),
        ListSettingsBody(
          text: "Calls",
          iconData: Icons.call_outlined,
          onTap: () {},
        ),
        ListSettingsBody(
          text: "People Nearby",
          iconData: Icons.person_pin_circle_outlined,
          onTap: () {},
        ),
        ListSettingsBody(
          text: "Saved Messages",
          iconData: Icons.message_outlined,
          onTap: () {},
        ),
        ListSettingsBody(
          text: "Settings",
          iconData: Icons.settings_outlined,
          onTap: () {},
        ),
        const Divider(
          color: Colors.grey,
        ),
        ListSettingsBody(
          text: "Invite Friends",
          iconData: Icons.person_add_alt_outlined,
          onTap: () {},
        ),
        ListSettingsBody(
          text: "Telegram Features",
          iconData: Icons.help_outline,
          onTap: () {},
        ),
      ]),
    );
  }
}

class ListSettingsBody extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Function() onTap;
  const ListSettingsBody(
      {super.key,
      required this.text,
      required this.iconData,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: Icon(iconData),
        title: Text(
          text,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
