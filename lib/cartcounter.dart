import 'package:flutter/material.dart';
import 'constants.dart';



class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () {
            if (numOfItems > 1) {
              setState(() {
                numOfItems-=1;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
           '$numOfItems'
          ),
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {

              setState(() {
                numOfItems+=1;
              });

          },
        ),
      ],
    );
  }

  SizedBox buildOutlineButton({required IconData icon, required Function press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        onPressed: press(),
        child: Icon(icon),
      ),
    );
  }
}