import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoppingapp/utils/constants/colors.dart';
import 'package:shoppingapp/utils/constants/images.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: screenbgColor,
        drawer: Drawer(),
        appBar: homeAppbar(),
        body: (ListView(
          children: [
            bannerSection(),
            newSectionHeading(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct()
                ],
              ),
            ),
            newSectionHeading(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct()
                ],
              ),
            ),
          ],
        )));
  }
}

newSectionHeading() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Herbs Seasoing",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          "View all",
          style: TextStyle(fontSize: 15),
        )
      ],
    ),
  );
}

bannerSection() {
  return Container(
    margin: EdgeInsets.all(9),
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(bannerImg), fit: BoxFit.cover),
      borderRadius: BorderRadius.circular(12),
      color: black,
    ),
    height: 200,
    child: Row(
      children: [
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              color: black.withOpacity(0.5),
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.elliptical(7, 9))),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 190),
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: yellow,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50))),
                child: Center(
                  child: Text(
                    "Vegi",
                    style: TextStyle(fontSize: 20, color: white, shadows: [
                      BoxShadow(
                          color: green, blurRadius: 20, offset: Offset(3, 3))
                    ]),
                  ),
                ),
              ),
              Text(
                "30% off",
                style: TextStyle(
                    fontSize: 40,
                    color: white,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      BoxShadow(
                          color: green, blurRadius: 200, offset: Offset(6, 7))
                    ]),
              ),
              Text(
                "on all vegetaables",
                style: TextStyle(fontSize: 20, color: white, shadows: [
                  BoxShadow(color: green, blurRadius: 200, offset: Offset(6, 7))
                ]),
              )
            ],
          ),
        )),
        Expanded(child: Container()),
      ],
    ),
  );
}

homeAppbar() {
  return AppBar(
    iconTheme: (IconThemeData(color: black)),
    backgroundColor: yellow,
    title: Text(
      "Home",
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

singleProduct() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Row(
      children: [
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: white),
            height: 230,
            width: 130,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                Expanded(flex: 2, child: Container(child: Image.asset(basil))),
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      "Fresh Basil",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "50 PKR/50 GM",
                      style: TextStyle(fontSize: 12),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: grey),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "50 gm",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  size: 17,
                                )
                              ]),
                          height: 24,
                        )),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                            child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.remove,
                                size: 17,
                              ),
                              Text(
                                "1",
                                style: TextStyle(fontSize: 12),
                              ),
                              Icon(
                                Icons.add,
                                size: 17,
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: grey),
                          ),
                          height: 24,
                        )),
                      ],
                    )
                  ],
                ))
              ]),
            ))
      ],
    ),
  );
}
