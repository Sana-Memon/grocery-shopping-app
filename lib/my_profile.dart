import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoppingapp/custom_Widgets/app_bar.dart';
import 'package:shoppingapp/custom_Widgets/list_tile_profile.dart';
import 'package:shoppingapp/utils/constants/colors.dart';
import 'package:shoppingapp/utils/constants/images.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: screenbgColor,
      appBar: homeAppbar("My Profile"),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: yellow,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 250,
                height: 80,
                child: ListView(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sana Memon",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("sanaamemon567@gmail.com")
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: yellow,
                            foregroundColor: white,
                            child: Icon(Icons.edit),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              profileListTile("My Orders", Icons.shop_2_outlined),
              profileListTile("My Delivery Address", Icons.location_city),
              profileListTile("Refer a friend", Icons.child_friendly),
              profileListTile("Terms & Condition", Icons.read_more),
              profileListTile("About", Icons.more),
              profileListTile("Logout", Icons.logout),
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
