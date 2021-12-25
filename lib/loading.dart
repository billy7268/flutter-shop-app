import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class loading extends StatelessWidget {
  const loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitCircle(
          color: Colors.white,
          size: 30,

        ),

      ),
    );
  }
}
