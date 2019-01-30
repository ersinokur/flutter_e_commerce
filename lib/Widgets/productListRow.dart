import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/utilities/constants.dart';

class ProductListRow extends StatelessWidget {
  String name;
  int currentPrice;
  int originalPrice;
  int discount;
  String imageUrl;
  String currcencyUnit;
  ProductListRow(
      {this.name,
      this.currentPrice,
      this.originalPrice,
      this.discount,
      this.imageUrl,
      this.currcencyUnit});

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
            SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    this.name,
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "$currentPrice $currcencyUnit ",
                        style: TextStyle(fontSize: 16.0, color: Colors.black),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "$originalPrice $currcencyUnit ",
                        style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "%$discount discount",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
