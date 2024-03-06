import 'package:flutter/material.dart';
import 'package:coffe_shop/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Coffe",
      home: LandingPageView(),
    );
  }
}

 class LandingPageView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('images/bghome.png'),
            fit: BoxFit.contain,
            alignment: Alignment.topCenter
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 550,),
            Container(
              width: 350,
              alignment: Alignment.bottomCenter,
              child: Text('Coffee so good, your taste buds will love it.',
              style: TextStyle(
                fontFamily: "Sora",
                color: Colors.white,
                fontSize: 42,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 350,
              alignment: Alignment.bottomCenter,
              child: Text('The best grain, the finest roast, the powerful flavor.',
              style: TextStyle(
                fontFamily: "Sora",
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w100
              ),
              textAlign: TextAlign.center,),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 50),
                backgroundColor: Color.fromRGBO(198, 124, 78, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),  
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Home(),
                )
                );
              },
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontFamily: "Sora",
                  color: Colors.white,
                  fontSize: 19,
                ),),
              )
          ],
        ),
      ),
    );
  }
 }
