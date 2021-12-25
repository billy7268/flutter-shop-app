import 'Product.dart';
import 'Product.dart';
import 'package:flutter/material.dart';
import 'DetailScreen.dart';
import 'constants.dart';
class ItemCard extends StatelessWidget {
 final Product product;
// final Function press;
 const ItemCard({
   Key? key,
   required this.product,
   //required this.press,
 }) : super(key: key);
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:(){
        Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) =>DetailScreen(
          product: this.product,
        ),
        ),
        );
      } ,
      child: Column(
        children:<Widget> [
          Container(
            padding: const EdgeInsets.all(kDefaultPaddin),
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(product.image),
          ),

      Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin/4),
      child: Text(
      product.title,
      style: TextStyle(color: kTextLightColor),
      ),
      ),
      Text("\$${product.price}",
        style: TextStyle(fontWeight: FontWeight.bold),
       ),
        ],
      ),
    );
  }


}
