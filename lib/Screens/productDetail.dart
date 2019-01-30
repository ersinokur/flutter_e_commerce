import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 40.0,
            color: Colors.black,
          ),
          onPressed: () {
            //return previous page
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        title: Text("Product Detail", style: TextStyle(color: Colors.black)),
      ),
      body: _buildProductDetails(context),
    );
  }

  _buildProductDetails(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildProductImages(),
            ],
          ),
        )
      ],
    );
  }

  _buildProductImages() {
    TabController imagesController = TabController(length: 3, vsync: this);
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        height: 250.0,
        child: Center(
          child: DefaultTabController(
            length: 3,
            child: Stack(
              children: <Widget>[
                TabBarView(
                  controller: imagesController,
                  children: <Widget>[
                    Image.network(
                        "https://images-na.ssl-images-amazon.com/images/I/81Jp7tqwcxL._UX342_.jpg"),
                    Image.network(
                        "https://images-na.ssl-images-amazon.com/images/I/91I9nWRfxFL._SX385_.jpg"),
                    Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjeQNX2mmikT_BuuDEp8AAgG2bP_R31BQuX9mLJd69MqW9zH6k"),
                  ],
                ),
                Container(
                  //selector elementini asagiya alir
                  alignment: FractionalOffset(0.5, 0.95),
                  child: TabPageSelector(
                    controller: imagesController,
                    selectedColor: Colors.grey,
                    color:Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
