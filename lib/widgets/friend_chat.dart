import 'package:demo_chat_app/constans.dart';
import 'package:demo_chat_app/widgets/friend_profile_online.dart';
import 'package:flutter/material.dart';

class FriendChat extends StatelessWidget {
  const FriendChat(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.text})
      : super(key: key);

  final String imageUrl, name, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            FriendProfileImage(imageUrl: imageUrl),
            SizedBox(width: 15),
            Container(
              width: 130,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    text,
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Spacer(),
            Text(
              "Now",
              style: greyTextStyle.copyWith(fontSize: 10),
            ),
          ],
        ),
        Container(
          width: double.infinity,
          height: 1,
          margin: EdgeInsets.symmetric(vertical: 16),
          color: kDividerColor,
        ),
      ],
    );
  }
}
