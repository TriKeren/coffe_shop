import 'package:flutter/material.dart';
import 'package:coffe_shop/order.dart';
import 'package:coffe_shop/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Detail(),
    );
  }
}

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  List<String> items = ["S", "M", "L"];

  int current = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 90,
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontFamily: "Sora",
            fontSize: 40,
            fontWeight: FontWeight.w500,
          ),
          title: const Text(
            'Detail',
            style: TextStyle(
                fontFamily: "Sora", fontSize: 30, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: IconButton(
              icon: const Icon(
                Icons.keyboard_arrow_left,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Home(),
                )
                );
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset('images/c5pg3.png'),
                ),
                const SizedBox(height: 20.0),
                Transform.translate(
                  offset: Offset(25, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cappuccino',
                        style: TextStyle(
                          fontFamily: "Sora",
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        'With Chocolatte',
                        style: TextStyle(
                          fontFamily: "Sora",
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              '4.8',
                              style: TextStyle(
                                  fontFamily: "Sora",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '(208)',
                              style: TextStyle(
                                  fontFamily: "Sora",
                                  fontSize: 13,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w200),
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(249, 249, 249, 1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.coffee,
                                color: Color.fromRGBO(198, 124, 74, 1),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(249, 249, 249, 1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.fastfood,
                                color: Color.fromRGBO(198, 124, 74, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Divider(
                          thickness: 1.4,
                          color: Color.fromRGBO(249, 249, 249, 1),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Description',
                        style: TextStyle(
                            fontFamily: "Sora",
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Transform.translate(
                        offset: Offset(0, 0),
                        child: SizedBox(
                          width: 320,
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text:
                                    'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Sora")),
                            TextSpan(
                                text: 'ReadMore',
                                style: TextStyle(
                                    color: Color.fromRGBO(194, 124, 74, 1),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Sora"))
                          ])),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0, 30),
                        child: Text(
                          'Size',
                          style: TextStyle(
                              fontFamily: "Sora",
                              fontSize: 25,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Transform.translate(
                        offset: Offset(-10, 0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 60,
                              width: double.infinity,
                              child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: items.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        current = index;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      margin: EdgeInsets.all(10),
                                      width: 90,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          color: current == index
                                              ? Color.fromRGBO(198, 124, 78, 1)
                                              : Colors.white,
                                          borderRadius: current == index
                                              ? BorderRadius.circular(15)
                                              : BorderRadius.circular(10),
                                          border: Border.all(
                                            color: current == index
                                                ? Color.fromRGBO(
                                                    198, 124, 78, 1)
                                                : Colors.grey.withOpacity(0.5),
                                          )),
                                      child: Center(
                                        child: Text(
                                          items[index],
                                          style: TextStyle(
                                            fontFamily: "Sora",
                                            fontSize: 18,
                                            color: current == index
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(offset: Offset(0, 25),
                      child: Text('Price',
                      style: TextStyle(
                        fontFamily: "Sora",
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                      ),
                      ),
                      SizedBox(height: 25,),
                      Text('\$ 4.53',
                      style: TextStyle(
                        fontFamily: "Sora",
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO( 198, 124, 78, 1)
                      ),)
                    ],
                  ),
                ),
                Transform.translate(offset: Offset(137, -45),
                child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 70),
                backgroundColor: Color.fromRGBO(198, 124, 78, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Order(),
                )
                );
              },
              child: 
              Text(
                'Buy Now',
                style: TextStyle(
                  fontFamily: "Ibarra",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),),
            ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
