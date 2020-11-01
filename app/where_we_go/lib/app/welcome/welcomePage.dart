import 'package:flutter/material.dart';
import 'package:where_we_go/animation/delayedAnimation.dart';
import 'package:where_we_go/app/sign_in/signInPage.dart';
import 'package:where_we_go/app/welcome/customButton.dart';
import 'package:where_we_go/app/welcome/welcomeLogo.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                DelayedAnimation(
                  child: WelcomeLogo(
                    text: "우리 어디가?",
                    radius: 50.0,
                    circleColor: Colors.green,
                    textColor: Colors.green,
                  ),
                  delay: 800,
                ),
                SizedBox(
                  height: 40.0,
                ),
                DelayedAnimation(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      CustomButton(
                        text: "로그인",
                        textColor: Colors.white,
                        color: Colors.green,
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SignInPage())),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      CustomButton(
                        text: "회원가입",
                        textColor: Colors.white,
                        color: Colors.lightGreen,
                        onPressed: () => print("REGISTER"),
                      ),
                    ],
                  ),
                  delay: 1600,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
