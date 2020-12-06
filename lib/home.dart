import 'package:flutter/material.dart';
import 'details.dart';
class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();

  }
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {



    var product_list=[
      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 120,
        "price" : 85,
        "address": "Near Vishwavidylaya Metro station"
      },

      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 100,
        "price" : 65
      },
      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 100,
        "price" : 65,
        "address": "Near Vishwavidylaya Metro station"
      },
      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 100,
        "price" : 65,
        "address": "Near Vishwavidylaya Metro station"
      },
      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 100,
        "price" : 65,
        "address": "Near Vishwavidylaya Metro station"
      },
      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 100,
        "price" : 65,
        "address": "Near Vishwavidylaya Metro station"
       },




    ];
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),


        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_product(
              product_name: product_list[index]['name'],
              product_pic: product_list[index]['picture'],
              product_oldprice: product_list[index]['old_price'],
              product_price: product_list[index]['price'],
              product_address: product_list[index]['address'],

            ),
          );
        }
    );
  }
}
class Single_product extends StatelessWidget {

  final product_name;
  final product_pic;
  final product_oldprice;
  final product_price;
  final product_address;

  Single_product({this.product_name,this.product_pic,this.product_oldprice,this.product_price,this.product_address});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: Text('Hero 1'),
        child: Material(
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(


                  MaterialPageRoute(builder: (context) => Product_details(

                    product_detail_name: product_name,
                    product_detail_new_price: product_price,
                    product_detail_old_price: product_oldprice,
                    product_detail_picture: product_pic,
                    product_detail_address: product_address,
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
