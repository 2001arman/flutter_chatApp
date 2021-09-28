import 'package:demo_chat_app/constans.dart';
import 'package:flutter/material.dart';

class NavbarItem extends StatelessWidget {
  const NavbarItem(
      {Key? key,
      required this.isActive,
      required this.iconUrl,
      required this.title})
      : super(key: key);

  final bool isActive;
  final String iconUrl, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Container(
          width: 24,
          height: 24,
          child: Image(
            image: AssetImage(iconUrl),
            color: isActive ? kPurpleColor : kGreyColor,
          ),
        ),
        SizedBox(height: 4),
        Text(
          title,
          style: isActive
              ? purpleTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semiBold,
                )
              : greyTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semiBold,
                ),
        ),
        Spacer(),
      ],
    );
  }
}
