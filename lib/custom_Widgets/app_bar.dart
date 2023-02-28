import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';

homeAppbar(String title) {
  return AppBar(
    iconTheme: (IconThemeData(color: black)),
    backgroundColor: yellow,
    title: Text(
      title,
      style: TextStyle(color: black),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundColor: lightYellow,
          child: Icon(
            Icons.search,
            color: black,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundColor: lightYellow,
          child: Icon(
            Icons.shop,
            color: black,
          ),
        ),
      )
    ],
  );
}
