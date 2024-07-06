import 'package:flutter/material.dart';
import 'package:untitled/util/global.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(cartlist.length, (index) =>Container(
            height: 100,
            width: MediaQuery.sizeOf(context).width,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Image.network("${cartlist[index]['thumbail']}",height: 80,width: 80,),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${cartlist[index]['name']}",style: TextStyle(fontSize: 20),),
                    Text("${cartlist[index]['price']}"),
                  ],
                ),
                Spacer(),
                IconButton(onPressed: (){
                  setState(() {
                    cartlist.removeAt(index); //delete cart
                  });
                }, icon: Icon(Icons.delete),),
              ],
            ),
          ),)
        ),
      ),
    );
  }
}
