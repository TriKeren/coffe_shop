import 'package:flutter/material.dart';
import 'package:coffe_shop/detail.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> items = ["Cappucino", "Machiato", "Latte", "Americano"];

  int current = 0;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(19, 19, 19, 1),
                    Color.fromRGBO(49, 49, 49, 1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: ListTile(
                            title: Text(
                              'Location',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Transform.translate(
                    offset: Offset(0.0, -15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 36.0),
                        child: Text(
                          'Bilzen, TanjungBalai',
                          style: TextStyle(
                            fontFamily: "Sora",
                            fontSize: 19,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(10, -35),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 0.1),
                  Transform.translate(
                    offset: Offset(145.0, -80),
                    child: Image.asset('images/profil.png'),
                  ),
                  Transform.translate(offset: Offset(0, -30),
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 100,
                      width: 340, // Adjusted height
                      child: TextField(
                        cursorColor: Colors.white,
                        style: TextStyle(fontSize: 14),
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          hintStyle:
                              TextStyle(color: Colors.white, fontFamily: "Sora"),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          fillColor: Color.fromRGBO(49, 49, 49, 1),
                          filled: true,
                          suffixIcon: Icon(Icons.tune, color: Colors.white),
                          prefixIcon: Icon(Icons.search, color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ),)
                ],
              ),
            ),
            Container(
              child: Transform.translate(
                offset: Offset(2.0, -60),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('images/pg2.png'),
                    ),
                    Positioned(
                      left: 25,
                      top: 15,
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          'Promo',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(25.0, 65.0),
                      child: Container(
                        width: 174,
                        height: 24,
                        color: Colors.black,
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(25.0, 97.9),
                      child: Container(
                        width: 130,
                        height: 24,
                        color: Colors.black,
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(25.0, 50),
                      child: Text(
                        'Buy one get \none FREE',
                        style: TextStyle(
                          fontFamily: "Sora",
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ...

            Transform.translate(
              offset: Offset(25.0, -40),
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
                            duration: const Duration(milliseconds: 300),
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 110,
                            decoration: BoxDecoration(
                              color: current == index
                                  ? Color.fromRGBO(198, 124, 78, 1)
                                  : Colors.white,
                              borderRadius: current == index
                                  ? BorderRadius.circular(15)
                                  : BorderRadius.circular(10),
                            ),
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
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 170,
                          height: 280,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            children: [
                              Transform.translate(
                                offset: Offset(5, 0),
                                child: Container(
                                  margin: const EdgeInsets.only(top: 8),
                                  child: Stack(children: [
                                    Image.asset(
                                      'images/c2.png',
                                      width: 160,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.asset(
                                      'images/4.9.png',
                                      width: 50,
                                    ),
                                  ]),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Cappucino',
                                      style: TextStyle(
                                          fontFamily: "Sora",
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    const Text(
                                      'with Chocolate',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(155, 155, 155, 1),
                                          fontFamily: "Sora",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          '\$ 4.53',
                                          style: TextStyle(
                                              fontFamily: "Sora",
                                              color:
                                                  Color.fromRGBO(47, 75, 48, 1),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                198, 124, 78, 1),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Detail(),
                                                    ));
                                              },
                                              icon: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 20,
                                              )),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Transform.translate(
                            offset: Offset(-58, 0),
                            child: Container(
                              width: 170,
                              height: 280,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                children: [
                                  Transform.translate(
                                    offset: Offset(5, 0),
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 8),
                                      child: Stack(children: [
                                        Image.asset(
                                          'images/c1.png',
                                          width: 160,
                                          fit: BoxFit.cover,
                                        ),
                                        Image.asset(
                                          'images/4.8.png',
                                          width: 50,
                                        ),
                                      ]),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Cappucino',
                                          style: TextStyle(
                                              fontFamily: "Sora",
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          'with Oat Milk',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  155, 155, 155, 1),
                                              fontFamily: "Sora",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              '\$ 3.90',
                                              style: TextStyle(
                                                  fontFamily: "Sora",
                                                  color: Color.fromRGBO(
                                                      47, 75, 48, 1),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Container(
                                              width: 35,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(
                                                    198, 124, 78, 1),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                    size: 20,
                                                  )),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 170,
                          height: 280,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            children: [
                              Transform.translate(
                                offset: Offset(5, 0),
                                child: Container(
                                  margin: const EdgeInsets.only(top: 8),
                                  child: Stack(children: [
                                    Image.asset(
                                      'images/c3.png',
                                      width: 160,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.asset(
                                      'images/4.9.png',
                                      width: 50,
                                    ),
                                  ]),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Cappucino',
                                      style: TextStyle(
                                          fontFamily: "Sora",
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    const Text(
                                      'with Chocolate',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(155, 155, 155, 1),
                                          fontFamily: "Sora",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          '\$ 4.53',
                                          style: TextStyle(
                                              fontFamily: "Sora",
                                              color:
                                                  Color.fromRGBO(47, 75, 48, 1),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                198, 124, 78, 1),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 20,
                                              )),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Transform.translate(
                            offset: Offset(-58, 0),
                            child: Container(
                              width: 170,
                              height: 280,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                children: [
                                  Transform.translate(
                                    offset: Offset(5, 0),
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 8),
                                      child: Stack(children: [
                                        Image.asset(
                                          'images/c4.png',
                                          width: 160,
                                          fit: BoxFit.cover,
                                        ),
                                        Image.asset(
                                          'images/4.8.png',
                                          width: 50,
                                        ),
                                      ]),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Cappucino',
                                          style: TextStyle(
                                              fontFamily: "Sora",
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          'with Oat Milk',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  155, 155, 155, 1),
                                              fontFamily: "Sora",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              '\$ 3.90',
                                              style: TextStyle(
                                                  fontFamily: "Sora",
                                                  color: Color.fromRGBO(
                                                      47, 75, 48, 1),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Container(
                                              width: 35,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(
                                                    198, 124, 78, 1),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                    size: 20,
                                                  )),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: Color.fromRGBO(198, 124, 78, 1),
          unselectedItemColor: Color.fromRGBO(141, 141, 141, 1),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Settings',
            ),
          ]),
    );
  }
}
