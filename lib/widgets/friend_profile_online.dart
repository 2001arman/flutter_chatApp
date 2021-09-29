import 'package:demo_chat_app/constans.dart';
import 'package:flutter/material.dart';

class FriendProfile extends StatelessWidget {
  const FriendProfile({Key? key, required this.imageUrl, this.isActive = false})
      : super(key: key);

  final String imageUrl;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: isActive ? EdgeInsets.only(left: 20) : EdgeInsets.all(0),
      alignment: Alignment.bottomRight,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
        ),
      ),
      child: isActive
          ? Container(
              width: 14,
              height: 14,
              decoration: BoxDecoration(
                color: kGreenColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: kBackgroundColor,
                  width: 2,
                ),
              ),
            )
          : SizedBox(),
    );
  }
}
