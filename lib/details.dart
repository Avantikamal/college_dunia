import 'package:flutter/material.dart';


class Product_details extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;
  final product_detail_address;

  Product_details({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
    this.product_detail_address
  });




  @override
  _Product_detailsState createState() => _Product_detailsState();
}

class _Product_detailsState extends State<Product_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF141C27),
        title: Center(child: InkWell(

            child: Text('Product Details'))),

        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),

        ],

      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                height: 40.0,
                color: Colors.black.withOpacity(0.5),
//                child: ListTile(
//                  leading: Text(widget.product_detail_name),
//                  title:
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Text(widget.product_detail_name,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Text('\$${widget.product_detail_new_price}',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "\$${widget.product_detail_old_price}",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ],
                ),

              ),
            ),

          ),





          Row(
            children: <Widget>[
              Expanded(child: MaterialButton(
                onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text('Size'),
                          content: Text('Choose the size'),
                          actions: <Widget>[
                            MaterialButton(onPressed: (){
                              Navigator.of(context).pop();
                            },
                              child: Text('close',
                                style: TextStyle(
                                    color: Colors.lightBlue
                                ),),)
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.black,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text('Size'
                    ),
                    ),
                    Expanded(
                        child: Icon(Icons.arrow_drop_down
                        )),

                  ],
                ),)
              ),
              Expanded(child: MaterialButton(
                onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text('Size'),
                          content: Text('Choose the color'),
                          actions: <Widget>[
                            MaterialButton(onPressed: (){
                              Navigator.of(context).pop();
                            },
                              child: Text('close',
                                style: TextStyle(
                                    color: Colors.lightBlue
                                ),),)
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.black,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text('Color')),
                    Expanded(
                        child: Icon(Icons.arrow_drop_down
                        )),

                  ],
                ),)
              ),
              Expanded(child: MaterialButton(
                onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text('Size'),
                          content: Text('Choose the quantity'),
                          actions: <Widget>[
                            MaterialButton(onPressed: (){
                              Navigator.of(context).pop();
                            },
                              child: Text('close',
                                style: TextStyle(
                                    color: Colors.lightBlue
                                ),),)
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.black,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text('Qty')),
                    Expanded(
                        child: Icon(Icons.arrow_drop_down
                        )),

                  ],
                ),)
              ),

            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: null,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text('Buy now'
                  ),
                  color:  Color(0xFF141C27),

                ),
              ),
              IconButton(
                icon: Icon(Icons.add_shopping_cart,
                  color: Colors.red,
                ),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(Icons.favorite_border,
                    color: Colors.red
                ),
                onPressed: (){},
              ),

            ],
          ),
          Divider(),
          ListTile(
            title: Text('Product Details',
              style: TextStyle(color: Colors.black),),
            subtitle: Text(''),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0)
                ,child: Text('Product name',style: TextStyle(
                    color: Colors.black
                ),),),
              Padding(padding: const EdgeInsets.all(5.0),
                child: Text(widget.product_detail_name),)
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0)
                ,child: Text('Product Brand',style: TextStyle(
                    color: Colors.black
                ),),),
              Padding(padding: const EdgeInsets.all(5.0),
                child: Text('Brand X'),)
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0)
                ,child: Text('Product condition',style: TextStyle(
                    color: Colors.black
                ),),),
              Padding(padding: const EdgeInsets.all(5.0),
                child: Text('New'),)
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Similar Products',
            ),
          ),

          Container(
            height: 340,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}
class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {

  var product_list = [
    {
      "name": "Blazer",
      "picture": "assets/images/blazer1.jpeg",
      "old_price": 120,
      "price": 85
    },

    {
      "name": "Dress",
      "picture": "assets/images/dress1.jpeg",
      "old_price": 100,
      "price": 65
    },
    {
      "name": "Heels",
      "picture": "assets/images/hills1.jpeg",
      "old_price": 100,
      "price": 65
    },
    {
      "name": "Skirt",
      "picture": "assets/images/skt1.jpeg",
      "old_price": 100,
      "price": 65
    },
    {
      "name": "Dress",
      "picture": "assets/images/dress2.jpeg",
      "old_price": 100,
      "price": 65
    },
    {
      "name": "Blazer",
      "picture": "assets/images/blazer2.jpeg",
      "old_price": 100,
      "price": 65
    },


  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_product(
            product_name: product_list[index]['name'],
            product_pic: product_list[index]['picture'],
            product_oldprice: product_list[index]['old_price'],
            product_price: product_list[index]['price'],

          );
        });
  }
}
class Similar_single_product extends StatelessWidget {

  final product_name;
  final product_pic;
  final product_oldprice;
  final product_price;

  Similar_single_product(
      {this.product_name, this.product_pic, this.product_oldprice, this.product_price});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: Text('Hero 1'),
        child: Material(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(


                  MaterialPageRoute(builder: (context) =>
                      Product_details(

                        product_detail_name: product_name,
                        product_detail_new_price: product_price,
                        product_detail_old_price: product_oldprice,
                        product_detail_picture: product_pic,

                      )));
            },
            child: GridTile(
                footer: Container(
                    height: 40.0,
                    color: Colors.black.withOpacity(0.5),
                    child: Row
                      (

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Text(product_name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0
                              ),
                            ),
                          ),
                          Text('\$$product_price',
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            "\$$product_oldprice",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.w800,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ])
                ),


                child: Image.asset(product_pic,
                  fit: BoxFit.cover,
                )
            ),
          ),
        ),


      ),
    );
  }
}
