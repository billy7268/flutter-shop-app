import 'package:flutter/material.dart';
import 'Product.dart';
import 'constants.dart';
import 'categories.dart';
import 'ItemCard.dart';
import 'DetailScreen.dart';

class Body extends StatelessWidget {


  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:kDefaultPaddin),
          child: Text(
          'Furniture',
          style:Theme.of(context).textTheme.headline5,
        ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],

                    ),
                  ),
            ),
          ),
        ],
    );

  }
}


