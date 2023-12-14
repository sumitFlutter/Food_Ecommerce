import 'package:flutter/material.dart';
import 'package:food_ecommrece/utils/global.dart';

class FoodDetails extends StatefulWidget {
  const FoodDetails({super.key});

  @override
  State<FoodDetails> createState() => _State();
}

class _State extends State<FoodDetails> {
  @override
  int i = 1;

  Widget build(BuildContext context) {
    Map? m1;
    m1 = ModalRoute.of(context)!.settings.arguments as Map;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent.shade400,
        centerTitle: true,
        title: Text("Welcome!"),
        actions: [
          const Icon(
            Icons.favorite,
            color: Colors.pink,
          )
        ],
      ),
      body: Column(children: [
        Container(
            height: 300,
            width: 430,
            decoration: BoxDecoration(color: Colors.greenAccent.shade400),
            child: Image.asset(
              "${m1["image"]}",
              fit: BoxFit.fill,
            )),
        const SizedBox(
          height: 20,
          width: 20,
        ),
        Column(
          children: [
            Container(
              height: 45,
              width: 70,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.greenAccent.shade400),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        i++;
                      });
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                  ),
                  Center(child: Text("$i")),
                  InkWell(
                    onTap: () {
                      setState(
                        () {
                          i--;
                        },
                      );
                    },
                    child: const Icon(
                      Icons.remove,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${m1["name"]}",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Whenever you're in Varanasi, this is a must visit place to feel the essence of this historic city in terms of street food. Famous for its chaat and kulfi, this place is damn pocket friendly and would satisfy your tummy in no time."),
              SizedBox(
                height: 15,
              ),
              Row(children: [
                Text("${m1["rate"]}⭐"),
                SizedBox(
                  width: 90,
                ),
                Text("🔥 100 Kcal"),
                SizedBox(
                  width: 80,
                ),
                Text("⏰ ${m1["time"]}"),
              ]),
              Text(
                "Ingradients:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    color: Colors.grey,
                    child: Text("🥦"),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    color: Colors.grey,
                    child: Text("🫘"),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    color: Colors.grey,
                    child: Text("🍓"),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    color: Colors.grey,
                    child: Text("🥭"),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    color: Colors.grey,
                    child: Text("🥥"),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  cartList.add(m1!);
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.greenAccent.shade400,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Add to cart",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    ));
  }
}
