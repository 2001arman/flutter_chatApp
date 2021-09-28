import 'package:demo_chat_app/constans.dart';
import 'package:demo_chat_app/widgets/navbar_item.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget myBottomNavbar() {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
        color: kNavbarColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavbarItem(
              iconUrl: "assets/icon_callnavbar.png",
              title: "Chats",
              isActive: true,
            ),
            NavbarItem(
              iconUrl: "assets/icon_callnavbar.png",
              title: "Calls",
              isActive: false,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: myBottomNavbar(),
    );
  }
}
