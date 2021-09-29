import 'package:demo_chat_app/constans.dart';
import 'package:demo_chat_app/widgets/friend_profile_online.dart';
import 'package:demo_chat_app/widgets/icon_container.dart';
import 'package:flutter/material.dart';

class CallDetails extends StatelessWidget {
  const CallDetails(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.date,
      this.isMissed = false})
      : super(key: key);

  final String imageUrl, name, date;
  final bool isMissed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            FriendProfileImage(imageUrl: imageUrl),
            SizedBox(width: 15),
            // Note: Name Section
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: isMissed
                      ? redTextStyle.copyWith(fontWeight: semiBold)
                      : whiteTextStyle.copyWith(fontWeight: semiBold),
                ),
                SizedBox(height: 3),
                Row(
                  children: [
                    Icon(
                      Icons.call,
                      size: 14,
                      color: kGreyColor,
                    ),
                    SizedBox(width: 7),
                    Text(
                      isMissed ? "Missed" : "Incomming",
                      style: greyTextStyle.copyWith(fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
            // Note: date section
            Spacer(),
            Text(
              date,
              style: greyTextStyle,
            ),
            SizedBox(width: 8),
            IconContainer(iconUrl: "assets/icon_info.png"),
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
