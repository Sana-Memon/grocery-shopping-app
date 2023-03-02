import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shoppingapp/firebase_options.dart';
import 'package:shoppingapp/home.dart';
import 'package:shoppingapp/my_profile.dart';
import 'package:shoppingapp/sign_In.dart';
import 'package:shoppingapp/single_product.dart';
import 'package:shoppingapp/utils/constants/images.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyProfile()
        // SingleProduct(
        //   ProductImg: basil,
        //   ProductName: 'bavhgchmsil',
        // )
        );
  }
}
