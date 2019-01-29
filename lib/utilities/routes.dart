// we keep our routes definitions in this file.
import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/Screens/productDetail.dart';
import 'package:flutter_e_commerce/utilities/constants.dart';

class Routes {
  static final routes = <String, WidgetBuilder>{
    
    //if a request come that it's name is ROUTE_PRODUCT_DETAIL, then give ProductDetailPage()
    Constants.ROUTE_PRODUCT_DETAIL :(BuildContext context) => ProductDetail()
  };
}