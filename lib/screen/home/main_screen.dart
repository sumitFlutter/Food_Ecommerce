import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool salad=true,mc=true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: const Icon(
              Icons.location_on_outlined,
              color: Colors.black,
            ),
            title: const Text(
              "Surat City",
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            actions: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "cart");
                },
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey.shade300),
                  child: const Icon(Icons.shopping_cart),
                ),
              ),
            ]),
        body: Column(
            children: [
        const Center(
          child: Text.rich(TextSpan(children: [
            TextSpan(text: "Find The ", style: TextStyle(fontSize: 25)),
            TextSpan(
                text: "Best\nFood ",
                style:
                TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            TextSpan(text: "Around You ", style: TextStyle(fontSize: 25)),
          ])),
        ),
      Container(
        height: 50,
        width: 280,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey.shade100,
        ),
        child: const Row(
          children: [
            SizedBox(width: 4,),
            Icon(
              Icons.search_rounded,
              color: Colors.black,
            ),
            Text("Serch your FAVOURITE FOOD HERE"),
            Icon(
              Icons.food_bank,
              color: Colors.black,
            )
          ],
        ),
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "  Find  ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "5km >",
            style:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 18,),
          InkWell(
            onTap: () {
              setState(() {
                salad=true;
                mc=true;
              });
            },
            child: Container(
              height: 35,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade100),
              child: const Center(
                child: Text(
                  "All",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          const SizedBox(width: 100),
          InkWell(
            onTap: () {
              setState(() {
                salad=true;
                mc=false;
              });
            },
            child: Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade100),
              child: const Center(
                child: Text(
                  "salad",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 100,
          ),
          InkWell(
            onTap: () {
              setState(() {
                salad=false;
                mc=true;
              });
            },
            child: Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade100,
              ),
              child: const Center(
                child: Text(
                  "main course",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
              Visibility(
                visible: salad,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate((food.length), (index) => Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "product",arguments: food[index]);
                          },
                          child: Container(
                            margin: const EdgeInsets.all(20),
                            height: 220,
                            width: 160,
                            decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(24),color: Colors.grey.shade100),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Image.asset("${food[index]["image"]}",height:150,width: 150,fit: BoxFit.fill,),
                              Text("${food[index]["name"]}",style: TextStyle(fontWeight: FontWeight.bold),),
                                Row(
                                  children: [
                                    Text("${food[index]["time"]}"),
                                    Spacer(),
                                    Text("${food[index]["rate"]}"),
                                    SizedBox(width: 2,),
                                    const Icon(Icons.star),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("\$${food[index]["price"]}"),
                                    Spacer(),
                                    Row(mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(height: 25,width: 25,color: Colors.green,child: const Icon(Icons.add,color: Colors.black,),),
                                      ],
                                    )
                                  ],
                                ),
                              ]
                            ),
                          ),
                        ),
                      ],
                    ),

                    ),
                  ),
                ),
              ),
              Visibility(
                visible: mc,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate((food1.length), (index) => Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "product",arguments: food1[index]);
                          },
                          child: Container(
                            margin: const EdgeInsets.all(20),
                            height: 220,
                            width: 160,
                            decoration:
                            BoxDecoration(shape:BoxShape.rectangle,borderRadius: BorderRadius.circular(24),color: Colors.grey.shade100),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Image.asset("${food1[index]["image"]}",height:150,width: 150,fit: BoxFit.fill,),
                                  Text("${food1[index]["name"]}",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Row(
                                    children: [
                                      Text("${food1[index]["time"]}"),
                                      Spacer(),
                                      Text("${food1[index]["rate"]}"),
                                      SizedBox(width: 2,),
                                      const Icon(Icons.star),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("\$${food1[index]["price"]}"),
                                      Spacer(),
                                      Row(mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(height: 25,width: 25,color: Colors.green,child: const Icon(Icons.add,color: Colors.black,),),
                                        ],
                                      )
                                    ],
                                  ),
                                ]
                            ),
                          ),
                        ),
                      ],
                    ),

                    ),
                  ),
                ),
              ),
      ]
    ),),
    );
  }
}
