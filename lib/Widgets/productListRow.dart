import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/utilities/constants.dart';

class ProductListRow extends StatelessWidget {
  String name;
  int currentPrice;
  int originalPrice;
  int discount;
  String imageUrl;

  ProductListRow(
      {this.name,
      this.currentPrice,
      this.originalPrice,
      this.discount,
      this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Row( 
      children: <Widget>[
        _builtProductItemCard(context),
        _builtProductItemCard(context),
      ],
    );
  }

  _builtProductItemCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Constants.ROUTE_PRODUCT_DETAIL);
      },
      child: Card(
        child: Column(
          children: <Widget>[
            //show prodcut image
            Container(
              child: Image.network(this.imageUrl),
              height: 250.0,
              width: MediaQuery.of(context).size.width / 2.2,
            ),
          ],
        ),
      ),
    );
  }
}
