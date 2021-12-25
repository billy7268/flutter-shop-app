import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'body.dart';

import 'Profile.dart';


class HomeScreen extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){

          },
          icon: Icon(Icons.arrow_back),
          color: Colors.grey[400],
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>profile(),
                ),
              );
            },
            icon: Icon(Icons.account_circle),
            color: Colors.grey[400],
          ),
         
        ],
      ),
      body: Body(),
    );
  }
}
