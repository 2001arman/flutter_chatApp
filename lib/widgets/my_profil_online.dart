import 'package:demo_chat_app/constans.dart';
import 'package:flutter/material.dart';

class MyProfilOnline extends StatelessWidget {
  const MyProfilOnline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 58,
      margin: EdgeInsets.only(left: defaultMargin),
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image_myprofil.png"),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: kBlueColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: kBackgroundColor,
                  width: 2,
                ),
              ),
              child: Icon(
                Icons.add,
                color: kWhiteColor,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
