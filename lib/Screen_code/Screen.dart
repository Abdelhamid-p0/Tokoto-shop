import 'package:flutter/material.dart';

class TokScreen extends StatelessWidget {
  const TokScreen({super.key});

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
                  color: Colors.orange,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 18,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Welcome to ',
              ),
              Text(
                "Tokoto, ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Let's shop!",
              ),
            ]),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              height: 250,
              color: Colors.orange,
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 4,
                  color: Colors.orange,
                ),
                SizedBox(
                  width: 6,
                ),
                Container(
                  width: 4,
                  height: 4,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 6,
                ),
                Container(
                  width: 4,
                  height: 4,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            TextButton(
                onPressed: prt,
                child: Text('Continue'),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                  primary: Colors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: 90,
                    vertical: 22,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                )),
          ]),
        )));
  }

  prt() {
    print("tOkToko");
  }
}
