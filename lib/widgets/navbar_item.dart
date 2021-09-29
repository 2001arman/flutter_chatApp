import 'package:demo_chat_app/constans.dart';
import 'package:flutter/material.dart';

class NavbarItem extends StatelessWidget {
  const NavbarItem(
      {Key? key,
      required this.isActive,
      required this.iconUrl,
      required this.title,
      required this.onTap})
      : super(key: key);

  final bool isActive;
  final String iconUrl, title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
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
      ),
    );
  }
}
