import 'package:coffe_shop/delivery.dart';
import 'package:flutter/material.dart';
import 'package:coffe_shop/detail.dart';

void main() {
  runApp(Order());
}

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderPage(),
    );
  }
}

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Detail(),
                ));
          },
          padding: const EdgeInsets.only(left: 20),
          icon: const Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 30,
          ),
        ),
        title: const Text(
          'Order',
          style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w600,
              fontFamily: "Sora"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 340,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 160,
                          height: 45,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(198, 124, 78, 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Text(
                              'Deliver',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Sora"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                          width: 160,
                          child: Center(
                            child: Text(
                              'Pick Up',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Sora"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  const Text(
                    'Deliveri Addreas',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Sora"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Jl. Kpg Sutoyo',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Sora"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                    style: TextStyle(
                        color: Color.fromRGBO(128, 128, 128, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Sora"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 130,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffDEDEDE),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.edit_square,
                              size: 19,
                              color: Color(0xff303336),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Edit Addreas',
                              style: TextStyle(
                                  color: Color(0xff303336), fontFamily: "Sora"),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 110,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffDEDEDE),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.event_note,
                              size: 18,
                              color: const Color(0xff303336),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Note',
                              style: TextStyle(
                                  color: Color(0xff303336), fontFamily: "Sora"),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('images/b2.png'),
                      Transform.translate(
                        offset: const Offset(-30, 0),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Capuccino',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Sora"),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'With Cocholate',
                              style: TextStyle(
                                  color: Color(0xff9B9B9B), fontFamily: "Sora"),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(
                                    0xffeaeaea,
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: const Icon(
                                Icons.remove,
                                size: 20,
                                color: Colors.black,
                              ),
                            ),
                            const Text(
                              '1',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(
                                    0xffeaeaea,
                                  )),
                                  borderRadius: BorderRadius.circular(100)),
                              child: const Icon(
                                Icons.add,
                                size: 20,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 3,
              color: Color(0xffF4F4F4),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 340,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffEAEAEA)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('images/Discount.png'),
                          Transform.translate(
                            offset: const Offset(-20, 0),
                            child: Text(
                              '1 Discount is applied',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Sora"),
                            ),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_right,
                            size: 20,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Payment Summary',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Sora"),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                          color: Color(0xff2F2D2C),
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '\$ 4.53',
                        style: TextStyle(
                            color: Color(0xff2F2D2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Delivery Free',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: "Sora"),
                      ),
                      Transform.translate(
                        offset: const Offset(70, 0),
                        child: const Text(
                          '\$ 2.0',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              decoration: TextDecoration.lineThrough,
                              fontFamily: "Sora"),
                        ),
                      ),
                      const Text(
                        '\$ 1.0',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Sora"),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 2,
                    color: Color(0xffEAEAEA),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Payment',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: "Sora"),
                      ),
                      Text(
                        '\$ 5.53',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('images/duwit.png'),
                      const SizedBox(
                        width: 80,
                      ),
                      Transform.translate(
                        offset: const Offset(-100, 0),
                        child: Container(
                          width: 130,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: const Color(0xffC67C4E),
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Center(
                                  child: Text(
                                    'Cash',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                '\$ 5.53',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff808080),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Delivery(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffC67C4E),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 120),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: const Text(
                        'Order',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: "Sora",
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
