import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoppingapp/custom_Widgets/app_bar.dart';
import 'package:shoppingapp/utils/constants/colors.dart';
import 'package:shoppingapp/utils/constants/images.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: homeAppbar("My Profile"),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: yellow,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 40, left: 20),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: white,
              child: CircleAvatar(
                backgroundImage: AssetImage(bannerImg),
                backgroundColor: yellow,
                radius: 45,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
