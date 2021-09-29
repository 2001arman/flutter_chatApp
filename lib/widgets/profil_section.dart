import 'package:demo_chat_app/constans.dart';
import 'package:demo_chat_app/widgets/icon_container.dart';
import 'package:flutter/material.dart';

class ProfilSection extends StatelessWidget {
  const ProfilSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image_myprofil.png"),
              ),
            ),
          ),
          IconContainer(
            iconUrl: "assets/icon_menu.png",
          ),
        ],
      ),
    );
  }
}
