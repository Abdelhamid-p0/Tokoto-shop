import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            Text("TOKOTO",
                style: TextStyle(
                  color: Color(0xffffa825d),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Rubik",
                )),
            SizedBox(
              height: 18,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Welcome to ',
                style: TextStyle(
                  color: Color(0xfffffbebebe),
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "Tokoto. ",
                style: TextStyle(
                  color: Color(0xfff9a9a9a),
                  fontWeight: FontWeight.w800,
                  fontFamily: "Rubik",
                ),
              ),
              Text(
                "Let's shop!",
                style: TextStyle(
                  color: Color(0xfffbebebe),
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w800,
                ),
              ),
            ]),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Image.asset("Assets/Images/Icons/splash_1.png"),
              width: 280,
              height: 250,
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xfffff6784d),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  width: 15,
                  height: 5,
                ),
                SizedBox(
                  width: 6,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffffd1d1d1),
                  ),
                  width: 5,
                  height: 5,
                ),
                SizedBox(
                  width: 6,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffffd1d1d1),
                  ),
                  width: 5,
                  height: 5,
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            TextButton(
                onPressed: prt,
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontFamily: "Rubik",
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFFFF77547),
                  primary: Colors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 22,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                )),
          ]),
        )));
  }

  prt() {
    print("tOkToko");
  }
}
