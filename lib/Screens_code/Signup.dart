import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfffff7f7f7),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(22),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Color(0xffa8a8a8),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Color(0xffa8a8a8),
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 33,
                ),
                Text("Register Account",
                    style: TextStyle(
                      color: Color(0xfff303130),
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Complete your details or continue \n              with social media",
                    style: TextStyle(
                      color: Color(0xfffaaaaaa),
                      fontFamily: "Rubik",
                      fontSize: 15,
                    )),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter your email",
                    suffixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter your password",
                    suffixIcon: Icon(Icons.lock_outline_rounded),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Confirm Passeword",
                    hintText: "Re-enter your passeword",
                    suffixIcon: Icon(Icons.lock_outline_rounded),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xffff77546),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 130,
                      vertical: 24,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  onPressed: prt(),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Rubik",
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xfffffeaebef),
                      ),
                      padding: EdgeInsets.all(8),
                      child: SvgPicture.asset(
                        "Assets/Images/Icons/google.svg",
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xfffffeaebef),
                      ),
                      padding: EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        "Assets/Images/Icons/facebook.svg",
                        width: 30,
                        height: 30,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xfffffeaebef),
                      ),
                      padding: EdgeInsets.all(8),
                      child: SvgPicture.asset(
                        "Assets/Images/Icons/twitter.svg",
                        width: 22,
                        height: 22,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Don't have an account?",
                      style: TextStyle(
                        color: Colors.grey,
                      )),
                  Text(" Signe Up",
                      style: TextStyle(
                        color: Colors.orange,
                      )),
                ]),
              ],
            ),
          ),
        ));
  }

  prt() => print("HYYY");
  Change(bool? val) => prt();
}
