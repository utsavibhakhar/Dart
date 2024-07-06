import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:untitled/util/global.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {

  //double slidervalue=0;
  //RangeValues range=RangeValues(0, 5000);
  String select="all";
  double rate=0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Home Page",
        style: TextStyle(
            color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.bold,
          ),
        ),
          actions: [
            IconButton(onPressed: (){
              Navigator.pushNamed(context, "cart");
            }, icon: Icon(Icons.add_shopping_cart,
              color: Colors.black)
            ),
          ],
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButton(
            //isExpanded: true,
            value: select,
            hint: Text("${select}"),
            items: [
              DropdownMenuItem(child: Text("All"),value: "all"),
            DropdownMenuItem(child: Text("SmartPhone"),value: "smartphone"),
            DropdownMenuItem(child: Text("SmartWatch"),value: "smartwatch"),
            DropdownMenuItem(child: Text("SmartTV"),value: "smarttv"),
            DropdownMenuItem(child: Text("Earbuds"),value: "earbuds"),
            DropdownMenuItem(child: Text("Laptop"),value: "laptop"),
            DropdownMenuItem(child: Text("Tablet"),value: "tablet"),
            DropdownMenuItem(child: Text("Camera"),value: "camera"),
          ],
            onChanged: (value){
              setState(() {
                select=value!;
                // Container(
                //   margin: EdgeInsets.only(left: 50,right: 50),
                //   child: Row(
                //     children: [
                //       Text("From \n${range.start}"),
                //       RangeSlider(values: range,
                //           max: 10000000,
                //           divisions: 20,
                //           onChanged: (value){
                //             setState(() {
                //               range=value;
                //             });
                //           }
                //       ),
                //       Text("To \n${range.end}"),
                //     ],
                //   ),
                // );
              });
            },
          ),


          Text("\tSmart Phones",
            style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 26,
            ),
          ),
           Visibility(
             visible: select=="smartphone" || select=="all",
             child: Container(
               margin: EdgeInsets.only(left: 15),
               decoration: BoxDecoration(
                 color: Colors.grey.shade100,
               ),
               child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      smartphone.length,
                          (index){
                        return InkWell(
                          onTap: (){
                            //to Navigate/ open a new screen(productscreen)
                            Navigator.pushNamed(context,"product",arguments: smartphone[index]);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 200,
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 200,
                                    width: 200,
                                    alignment: Alignment.center,
                                    //smartphone list
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                    child:Image.network("${smartphone[index]['thumbail']}",
                                      height: 200,
                                      width: 200,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        child: Text("${smartphone[index]['name']}",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text("${smartphone[index]['price']}",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  RatingBar.builder(
                                    itemCount: 5,
                                      direction: Axis.horizontal,
                                      itemBuilder: (context,index){
                                        return Icon(Icons.star,color: Colors.amber,);
                                      },
                                      onRatingUpdate: (value){
                                          setState(() {
                                            rate=value;
                                          });
                                      },
                                    glowColor: Colors.amber,
                                    allowHalfRating: true,
                                  ),
                                  Text("$rate"),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
             ),
           ),

          Text("\tLaptops",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          Visibility(
            visible: select=="laptop" || select=="all",
            child: Container(
              margin: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
              ),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      laptop.length,
                          (index){
                        return InkWell(
                          onTap: (){
                            //to Navigate/ open a new screen(productscreen)
                            Navigator.pushNamed(context,"product",arguments: laptop[index]);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 200,
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 200,
                                    width: 200,
                                    alignment: Alignment.center,
                                    //smartphone list
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10)),
                                    child:Image.network("${laptop[index]['thumbail']}",
                                      height: 200,
                                      width: 200,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        child: Text("${laptop[index]['name']}",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text("${laptop[index]['price']}",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  RatingBar.builder(
                                    itemCount: 5,
                                    direction: Axis.horizontal,
                                    itemBuilder: (context,index){
                                      return Icon(Icons.star,color: Colors.amber,);
                                    },
                                    onRatingUpdate: (value){
                                      setState(() {
                                        rate=value;
                                      });
                                    },
                                    glowColor: Colors.amber,
                                    allowHalfRating: true,
                                  ),
                                  Text("$rate"),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}