import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/Widgets/productListRow.dart';

class ProductList extends StatelessWidget {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;

    return Scaffold(
      appBar: AppBar(
        title: Text("Product List", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: _buildProductListPage(),
    );
  }

  _buildProductListPage() {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          if (index == 0) {
            //create filtering widget
            return _buildFilterwidgets(screenSize);
          } // create bottom for last items.
          else if (index == 4) {
            return Text("last part");
          } else {
            return _builtProductListRow();
          }
        },
      ),
    );
  }

  _buildFilterwidgets(Size screenSize) {
    return Container(
        margin: EdgeInsets.all(12.0),
        width: screenSize.width,
        child: Card(
            child: Container(
                //it aligns the center of the row
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Row(
                  // leave spaces on beginning and ending.
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //1. item of row
                    _builtFilterButton("Order"),
                    //2. item of row
                    // a black line
                    Container(
                      color: Colors.black,
                      width: 2.0,
                      height: 24.0,
                    ),
                    //3. item of row
                    _builtFilterButton("Filter"),
                  ],
                ))));
  }

  _builtFilterButton(String title) {
    //Inkwell is a type of button, when we press that gives a shadow effect its around.
    return InkWell(
      child: Row(
        children: <Widget>[
          Icon(Icons.arrow_drop_down, color: Colors.black),
          //create a space betwen icon and text
          SizedBox(
            width: 2.0,
          ),
          Text(title)
        ],
      ),
    );
  }

  _builtProductListRow() {
    return ProductListRow(
        name: "Jean",
        currentPrice: 150,
        originalPrice: 300,
        discount: 50,
        imageUrl: "https://www.aldimgiydim.com/content/images/large/0003051_pano-kot-pantolon-siyah.jpeg");
  }
}
