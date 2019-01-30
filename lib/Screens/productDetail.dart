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
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildProductImages(),
              _buildProductTitle(),
              SizedBox(
                height: 12.0,
              ),
              _buildProductPrice(),
              SizedBox(
                height: 12.0,
              ),
              _buildDivider(size),
              SizedBox(
                height: 12.0,
              ),
              _buildExtraInfo(),
              SizedBox(
                height: 12.0,
              ),
              _buildDivider(size),
              SizedBox(
                height: 12.0,
              ),
              _buildProductSizeInfo(),
              SizedBox(
                height: 12.0,
              ),
              _buildInfo(),
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
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildProductTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Center(
        child: Text(
          "basşlık",
          style: TextStyle(fontSize: 16.0, color: Colors.black),
        ),
      ),
    );
  }

  _buildProductPrice() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: <Widget>[
          Text(
            "fiyat1",
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
          SizedBox(
            width: 8.0,
          ),
          Text(
            "fiyat2",
            style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
                decoration: TextDecoration.lineThrough),
          ),
          SizedBox(
            width: 8.0,
          ),
          Text(
            "indirim",
            style: TextStyle(fontSize: 12.0, color: Colors.blue),
          ),
        ],
      ),
    );
  }

  _buildDivider(Size scrrenSize) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey,
          width: scrrenSize.width,
          height: 0.25,
        )
      ],
    );
  }

  _buildExtraInfo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: <Widget>[
          Icon(Icons.local_offer, color: Colors.grey),
          SizedBox(
            width: 12.0,
          ),
          Text(
            "click to get more extra information",
            style: TextStyle(color: Colors.green),
          ),
        ],
      ),
    );
  }

  _buildProductSizeInfo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.straighten,
                color: Colors.grey,
              ),
              SizedBox(width: 12.0),
              Text(
                "Size: M",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text("Size Table",
                  style: TextStyle(fontSize: 12.0, color: Colors.blue)),
            ],
          )
        ],
      ),
    );
  }

  _buildInfo() {
    TabController tabController = TabController(length: 2, vsync: this);
    return Container(
      child: Column(
        children: <Widget>[
          TabBar(
            controller: tabController,
            tabs: <Widget>[
              Tab(
                  child: Text(
                "Details",
                style: TextStyle(color: Colors.black),
              )),
              Tab(
                child: Text(
                  "Washing Info",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 6.0),
            height: 40.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                Text(
                  "%30 cotton",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  "max 40°",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
