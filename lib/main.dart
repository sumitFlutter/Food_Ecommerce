

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ecommrece/screen/cart/cart.dart';
import 'package:food_ecommrece/screen/home/main_screen.dart';
import 'package:food_ecommrece/screen/product screen/product_screen.dart';
import 'package:food_ecommrece/screen/product%20screen/product_screen.dart';

void main()
{
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" :(context)=>HomeScreen(),
    "product":(context)=>FoodDetails(),
        "cart":(context)=>Cart(),
      },
    )
  );
}