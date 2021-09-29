import 'package:demo_chat_app/constans.dart';
import 'package:demo_chat_app/pages/chat_page.dart';
import 'package:demo_chat_app/widgets/call_details.dart';
import 'package:demo_chat_app/widgets/icon_container.dart';
import 'package:demo_chat_app/widgets/navbar_item.dart';
import 'package:demo_chat_app/widgets/profil_section.dart';
import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget myBottomNavbar() {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 70,
        color: kNavbarColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavbarItem(
              iconUrl: "assets/icon_chat.png",
              title: "Chats",
              isActive: false,
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(),
                  ),
                );
              },
            ),
            NavbarItem(
              iconUrl: "assets/icon_callnavbar.png",
              title: "Calls",
              isActive: true,
              onTap: () {},
            ),
          ],
        ),
      );
    }

    Widget titleSection() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Calls",
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            IconContainer(iconUrl: "assets/icon_search.png"),
          ],
        ),
      );
    }

    Widget friendCalls() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 20),
        child: Column(
          children: [
            CallDetails(
              imageUrl: "assets/image_profil1.png",
              name: "Kezia Anne",
              date: "10/9/21",
            ),
            CallDetails(
              imageUrl: "assets/image_profil7.png",
              name: "Jeff Bezos",
              date: "10/8/21",
              isMissed: true,
            ),
            CallDetails(
              imageUrl: "assets/image_profil2.png",
              name: "Peter Park",
              date: "10/10/21",
              isMissed: true,
            ),
            CallDetails(
              imageUrl: "assets/image_profil6.png",
              name: "Josh George",
              date: "8/9/21",
            ),
            CallDetails(
              imageUrl: "assets/image_profil5.png",
              name: "Alice March",
              date: "4/9/21",
            ),
            CallDetails(
              imageUrl: "assets/image_profil4.png",
              name: "Ben Markz",
              date: "1/8/21",
              isMissed: true,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: myBottomNavbar(),
      body: SafeArea(
        child: ListView(
          children: [
            ProfilSection(),
            titleSection(),
            friendCalls(),
          ],
        ),
      ),
    );
  }
}
