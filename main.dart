import 'package:flutter/material.dart';
import 'package:untitled/screen/cart_screen.dart';
import 'package:untitled/screen/home_screen.dart';
import 'package:untitled/screen/product_screen.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=>homescreen(),
        "product":(context)=>productscreen(),
        "cart":(context)=>CartScreen(),
      },
    ),
  );
}