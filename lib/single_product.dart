// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoppingapp/utils/constants/colors.dart';
import 'package:shoppingapp/utils/constants/images.dart';

import 'custom_Widgets/app_bar.dart';

enum chooseOption { filled, notFilled }

class SingleProduct extends StatefulWidget {
  String ProductName;
  var ProductImg;
  SingleProduct({required this.ProductName, required this.ProductImg});

  @override
  State<SingleProduct> createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  chooseOption selected = chooseOption.filled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar("Product Overview"),
      bottomNavigationBar: Row(
        children: [
          bottomBar(Icons.shop, "Add to cart", yellow, black, black),
          bottomBar(
              Icons.favorite_outline, "Add to wishlist", black, white, white),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(05),
                child: ListTile(
                  title: Text(widget.ProductName,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  subtitle: Text("50 gm"),
                )),
            Container(
              padding: EdgeInsets.all(12),
              child: Image.asset(
                widget.ProductImg,
                height: 200,
                width: 200,
              ),
            ),
            Container(
              child: Text("Available Options",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Radio(
                    activeColor: yellow,
                    value: chooseOption.filled,
                    groupValue: selected,
                    onChanged: (value) {
                      setState(() {
                        selected = value!;
                      });
                    }),
                Text("50 Grams"),
                OutlinedButton(
                    onPressed: () {},
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              color: yellow,
                            ),
                            Text(
                              "Add",
                              style: TextStyle(color: black),
                            )
                          ],
                        )))
              ],
            ),
            Text(
              "About this Product",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              "lorem ipsum lore ipsumlorem ipsum lore ipsumlorem ipsum lore ipsum ",
              style: TextStyle(fontSize: 15),
            ),
            Text(
              "lorem ipsum lore ipsumlorem ipsum lore ipsumlorem ipsum lore ipsum ",
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}

bottomBar(IconData icon, String title, custombgColor, textColor, iconColor) {
  return Expanded(
    child: Container(
      color: custombgColor,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: iconColor),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(color: textColor),
            ),
          ],
        ),
      ),
    ),
  );
}
