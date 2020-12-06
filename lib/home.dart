import 'package:flutter/material.dart';

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
        "old_price": 6873,
        "price" : 5768,
        "address": "Near Vishwavidylaya Metro station"
      },

      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 6873,
        "price" : 5768
      },
      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 6873,
        "price" : 5768,
        "address": "Near Vishwavidylaya Metro station"
      },
      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 6873,
        "price" : 5768,
        "address": "Near Vishwavidylaya Metro station"
      },
      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 6873,
        "price" : 5768,
        "address": "Near Vishwavidylaya Metro station"
      },
      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 6873,
        "price" : 5768,
        "address": "Near Vishwavidylaya Metro station|2km away from bus stand"
      },
      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 6873,
        "price" : 5768,
        "address": "Near Vishwavidylaya Metro station|2km away from bus stand"
      },
      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 6873,
        "price" : 5768,
        "address": "Near Vishwavidylaya Metro station|2km away from bus stand"
      },
      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 6873,
        "price" : 5768,
        "address": "Near Vishwavidylaya Metro station|2km away from bus stand"
      }, {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 6873,
        "price" : 5768,
        "address": "Near Vishwavidylaya Metro station|2km away from bus stand"
      }, {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 6873,
        "price" : 5768,
        "address": "Near Vishwavidylaya Metro station|2km away from bus stand"
      },



      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 6873,
        "price" : 5768,
        "address": "Near Vishwavidylaya Metro station"
      },
      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 6873,
        "price" : 5768,
        "address": "Near Vishwavidylaya Metro station"
      },
      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 6873,
        "price" : 5768,
        "address": "Near Vishwavidylaya Metro station"
      },
      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 6873,
        "price" : 5768,
        "address": "Near Vishwavidylaya Metro station"
      },
      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 6873,
        "price" : 5768,
        "address": "Near Vishwavidylaya Metro station"
      },
      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 6873,
        "price" : 5768,
        "address": "Near Vishwavidylaya Metro station"
      },
      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 6873,
        "price" : 5768,
        "address": "Near Vishwavidylaya Metro station|2km away from bus stand"
      },
      {
        "name": "Hansraj College Delhi University",
        "picture": "assets/college_02.jpg",
        "old_price": 6873,
        "price" : 5768,
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

//            onTap: (){
//              Navigator.of(context).push(
//
//
//                  MaterialPageRoute(builder: (context) => Product_details(
//
//                    product_detail_name: product_name,
//                    product_detail_new_price: product_price,
//                    product_detail_old_price: product_oldprice,
//                    product_detail_picture: product_pic,
//                    product_detail_address: product_address,
//                  )));
//            },
            child: GridTile(
                footer: Container(
                    height: 80.0,

                    color: Colors.white,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(product_name,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 5.0
                                  ),
                                ),
                                Text(product_address,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 5.0
                                  ),
                                ),]),
                                SizedBox(width: 20.0,),
                                Column(
                                  children: <Widget>[
                                    Text('\Rs $product_price',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10.0, decoration: TextDecoration.lineThrough

                                      ),
                                    ),
                                    SizedBox(
                                      height: 2.0,
                                    ),
                                    Text(
                                      "\Rs$product_oldprice",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ],
                                ),



                        ],
                      ),
                    )
                ),


                child: Stack(
                  children: <Widget>[
                   Container(
                     height: 120,
                     child: Image.asset(product_pic,
                      fit: BoxFit.cover,
                  ),
                   ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 120.0,top: 10.0,right: 7.0),
                          child: Container(
                            height: 30.0,
                            width: 60.0
                            ,child: Center(child: Text('3.9/5 Good',style: TextStyle(color: Colors.white,fontSize: 8.0),)),

                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(5.0) ,
                            )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 45,left: 6.0),
                          child: Row(
                            children: <Widget>[

                                 Container(
                                  height: 10.0,
                                  width: 80.0,
                                  child: Center(child: Text('Best College',style: TextStyle(color: Colors.grey,fontSize: 8.0),)),

                                  decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(10.0) ,
                                  ),
                                ),

                         SizedBox(width: 10.0,)
,
                             Container(
                              height: 10.0,
                              width: 30.0,
                              child: Center(child: Text('2km',style: TextStyle(color: Colors.grey,fontSize: 8.0),)),

                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0) ,
                              ),
                            ),
                          ]),
                        )

                      ],
                    )
                ])
            ),
          ),
        ),


      ),
    );
  }
}
