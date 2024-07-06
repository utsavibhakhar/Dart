import 'package:flutter/material.dart';
import 'package:untitled/util/global.dart';

class productscreen extends StatefulWidget {
  const productscreen({super.key});

  @override
  State<productscreen> createState() => _productscreenState();
}

class _productscreenState extends State<productscreen> {
  @override
  Widget build(BuildContext context) {
    //Fetch Data
    Map product=ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, "cart");
          }, icon: Icon(Icons.add_shopping_cart)
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Image.network("${product['thumbail']}",height:400,),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                  ),
                  child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:"${product['name']}",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text:"💲${product['price']}",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                        ]
                      )
                  )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
/*
Text("${product['name']}",style: TextStyle(fontSize: 25),),
            Text("${product['price']}",style: TextStyle(fontSize: 25),),
            Text("${product['rate']}",style: TextStyle(fontSize: 25),),
            Text("${product['category']}",style: TextStyle(fontSize: 25),),

            //Spacer(),
            FloatingActionButton.extended(onPressed: (){
              cartlist.add(product);  // add to cart
              Navigator.pop(context); //Go back to home screen
            },
              label: Text("Add To Cart"),
               icon: Icon(Icons.add_shopping_cart),
            ),
            //Spacer(),
 */