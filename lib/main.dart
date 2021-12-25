import 'package:firebase_core/firebase_core.dart';
import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';
import 'Singup.dart';
import 'Product.dart';
import 'constants.dart';
import 'register.dart';
import 'HomeScreen.dart';
//
import 'DetailScreen.dart';
void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
  //Firebase.initializeApp();
  //CollectionReference users =FirebaseFirestore.instance.collection('users');
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: HomeScreen(),,
      home: register(),
    );


  }
}








