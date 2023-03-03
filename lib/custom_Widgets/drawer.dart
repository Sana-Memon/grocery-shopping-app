import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';

myCustomDrawer() {
  return Drawer(
      child: Container(
    color: yellow,
    child: Column(
      children: [
        DrawerHeader(
            child: Row(
          children: [
            CircleAvatar(
              radius: 43,
              backgroundColor: white,
              child: CircleAvatar(
                backgroundColor: lightYellow,
                radius: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48.0, left: 28),
              child: Column(
                children: [
                  Text(
                    "Welcome Guest",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
          ],
        )),
        drawerList(myIcon: Icons.home, myTitle: "Home"),
        drawerList(myIcon: Icons.shop, myTitle: "Review Cart"),
        drawerList(myIcon: Icons.person_outline, myTitle: "My Profile"),
        drawerList(myIcon: Icons.notification_add, myTitle: "Notification"),
        drawerList(myIcon: Icons.reviews, myTitle: "Rating And Reviews"),
        drawerList(myIcon: Icons.favorite_outline, myTitle: "Wishlist"),
        drawerList(myIcon: Icons.copy_outlined, myTitle: "Complaint"),
        drawerList(myIcon: Icons.format_quote_outlined, myTitle: "FAQs"),
      ],
    ),
  ));
}

drawerList(
    {required String myTitle, required IconData myIcon, Function? onTap}) {
  return ListTile(
    onTap: () {
      onTap;
    },
    leading: Icon(
      myIcon,
    ),
    title: Text(myTitle),
  );
}
