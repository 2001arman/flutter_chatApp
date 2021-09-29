import 'package:demo_chat_app/constans.dart';
import 'package:demo_chat_app/pages/call_page.dart';
import 'package:demo_chat_app/widgets/friend_chat.dart';
import 'package:demo_chat_app/widgets/friend_profile_online.dart';
import 'package:demo_chat_app/widgets/icon_container.dart';
import 'package:demo_chat_app/widgets/my_profil_online.dart';
import 'package:demo_chat_app/widgets/navbar_item.dart';
import 'package:demo_chat_app/widgets/profil_section.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

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
              isActive: true,
              onTap: () {},
            ),
            NavbarItem(
              iconUrl: "assets/icon_callnavbar.png",
              title: "Calls",
              isActive: false,
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CallPage(),
                  ),
                );
              },
            ),
          ],
        ),
      );
    }

    Widget onlineSection() {
      return Container(
        child: Column(
          children: [
            // Note: Text Online
            Row(
              children: [
                SizedBox(width: defaultMargin),
                Text(
                  "Online",
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
                Spacer(),
                Container(
                  width: 20,
                  height: 20,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: defaultMargin),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kNavbarColor,
                  ),
                  child: Text(
                    "5",
                    style: whiteTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
                  ),
                )
              ],
            ),
            // Note: Profil Online
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MyProfilOnline(),
                  FriendProfileImage(
                    imageUrl: "assets/image_profil1.png",
                    isActive: true,
                  ),
                  FriendProfileImage(
                    imageUrl: "assets/image_profil2.png",
                    isActive: true,
                  ),
                  FriendProfileImage(
                    imageUrl: "assets/image_profil3.png",
                    isActive: true,
                  ),
                  FriendProfileImage(
                    imageUrl: "assets/image_profil4.png",
                    isActive: true,
                  ),
                  FriendProfileImage(
                    imageUrl: "assets/image_profil5.png",
                    isActive: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget messageSection() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          children: [
            SizedBox(height: 22),
            // Note: Message Text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Message",
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
                IconContainer(iconUrl: "assets/icon_search.png"),
              ],
            ),
            // Note: chat section
            SizedBox(height: 20),
            FriendChat(
              imageUrl: "assets/image_profil1.png",
              name: "Kezia Anne",
              text: "Sent a Photo",
            ),
            FriendChat(
              imageUrl: "assets/image_profil2.png",
              name: "Peter Park",
              text: "Oke, Sure",
            ),
            FriendChat(
              imageUrl: "assets/image_profil3.png",
              name: "Lola Bae",
              text: "Don't forget group async",
            ),
            FriendChat(
              imageUrl: "assets/image_profil4.png",
              name: "Ben Markz",
              text: "Check you Email!",
            ),
            FriendChat(
              imageUrl: "assets/image_profil5.png",
              name: "Alice March",
              text: "No, Sorry",
            ),
            FriendChat(
              imageUrl: "assets/image_profil6.png",
              name: "Josh George",
              text: "Sent Sticker",
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
            onlineSection(),
            messageSection(),
          ],
        ),
      ),
    );
  }
}
