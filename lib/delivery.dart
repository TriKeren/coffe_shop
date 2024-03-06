import 'package:flutter/material.dart';
import 'package:coffe_shop/order.dart';

void main() {
  runApp(Delivery());
}

class Delivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DeliveryPage(),
    );
  }
}

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'images/maps.png',
                width: 420,
                height: 870,
                fit: BoxFit.cover,
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Order(),
                                ));
                          },
                          icon: const Icon(
                            Icons.keyboard_arrow_left,
                            size: 30,
                          ),
                        )),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(Icons.gps_fixed),
                    )
                  ],
                ),
              ),
              Transform.translate(
                offset: const Offset(87, 165),
                child: Image.asset(
                  'images/rute.png',
                  width: 198,
                  fit: BoxFit.cover,
                ),
              ),
              Transform.translate(
                offset: const Offset(80, 220),
                child: Image.asset(
                  'images/pin.png',
                ),
              ),
              Transform.translate(
                offset: const Offset(260, 325),
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Image.asset(
                    'images/motor.png',
                  ),
                ),
              ),
              Stack(
                children: [
                  Transform.translate(
                    offset: const Offset(0, 530),
                    child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, 530),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: Center(
                        child: Column(
                          children: [
                            const SizedBox(height: 8),
                            Container(
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100)),
                              child: const Divider(
                                thickness: 6,
                                color: Color(0xffeaeaea),
                              ),
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              '10 minutes left',
                              style: TextStyle(
                                  color: Color(0xff303336),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 15),
                            RichText(
                              text: const TextSpan(children: [
                                TextSpan(
                                    text: 'Delivery to ',
                                    style: TextStyle(color: Color(0xff808080))),
                                TextSpan(
                                  text: 'Jl. Kpg Sutoyo',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              ]),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              height: 21,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: const EdgeInsets.all(8),
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff36C07E),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    );
                                  }),
                            ),
                            Transform.translate(
                              offset: const Offset(130, -13),
                              child: Container(
                                width: 70,
                                height: 5,
                                decoration: BoxDecoration(
                                    color: const Color(0xffDFDFDF),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                            ),
                            Container(
                              width: 400,
                              height: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffDEDEDE)),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 20),
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xffDEDEDE)),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child:
                                        Image.asset('images/motor2.png'),
                                  ),
                                  const SizedBox(width: 20),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Delivered your order',
                                        style: TextStyle(
                                            color: Color(0xff303336),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      SizedBox(height: 10),
                                      SizedBox(
                                        width: 200,
                                        child: Text(
                                          'We deliver your goods to you in the shortes possible time.',
                                          style: TextStyle(
                                            color: Color(0xff808080),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('images/john.png'),
                                Transform.translate(
                                  offset: const Offset(-50, 0),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Johan Hawn',
                                        style: TextStyle(
                                            color: Color(0xff303336),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        'Personal Courier',
                                        style:
                                            TextStyle(color: Color(0xff808080)),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0xffDEDEDE)),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: const Icon(Icons.phone_in_talk,
                                  color: Colors.grey,),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
