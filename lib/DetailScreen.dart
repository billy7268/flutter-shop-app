import 'package:flutter/material.dart';
import 'Product.dart';
import 'constants.dart';

import 'detailbody.dart';


class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: detailbody(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
        color: Colors.grey[400],
      ),
      actions: <Widget>[
        /*IconButton(
          onPressed: (){

          },
          icon: Icon(Icons.search),
          color: Colors.grey[400],
        ),*/

        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
