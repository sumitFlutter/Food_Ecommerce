import 'package:flutter/material.dart';
import 'package:food_ecommrece/utils/global.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  double total=0;
  void sum()
  {
    for(int i=0;i<cartList.length;i++)
    {
      total=(cartList[i]["price"]as double)+total;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    sum();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            centerTitle: true,
            title: Text("Cart"),
            actions: [
              InkWell(
                  onTap:() {
                    Navigator.pop(context);
                  },child: Container(margin:EdgeInsets.all(10),child: Icon(Icons.close))),
            ],
          ),
          body: Stack(
            children: [SingleChildScrollView(
              child: Column(
                children: List.generate(cartList.length, (index) =>  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      height: 100,
                      width: 100,
                      child: Image.asset("${cartList[index]["image"]}"),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 100,
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("${cartList[index]["name"]}:\n\$ ${cartList[index]["price"]}"),
                        ],
                      ),
                    ),
                    Spacer(),
                    InkWell(onTap: () {
                     setState(() {
                       cartList.removeAt(index);
                       total=0;
                       sum();
                     });
                    },
                        child: Container(margin:EdgeInsets.all(15),child: Icon(Icons.delete))),
                  ],
                ),
                ),



              ),
            ),
            Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(onTap: () {
                  Navigator.pop(context);
                },
                  child: Container(
                    height: 60,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      boxShadow: [
                        BoxShadow(color: Colors.black12,
                        blurRadius: 2,
                        spreadRadius: 5
                        )
                      ]
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text("Total price:   $total",style: TextStyle(fontWeight: FontWeight.bold),),
    Container(height: 30,width: 80,color: Colors.green,alignment:Alignment.center,child: Text("CheckOut",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),
                      ],
                    )),
                ),
                ),
            ],

          ),
        ));
  }
}
