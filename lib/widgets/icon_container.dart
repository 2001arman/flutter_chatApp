import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({Key? key, required this.iconUrl}) : super(key: key);

  final String iconUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(iconUrl),
        ),
      ),
    );
  }
}
