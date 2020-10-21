import 'package:flutter/material.dart';
import 'package:where_we_go/app/welcome/customButton.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.green,
              ),
              SizedBox(height: 10.0,),
              Text(
                "우리 어디가?",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              CustomButton(
                text: "로그인",
                textColor: Colors.white,
                color: Colors.green,
                onPressed: () => print("LOGIN"),
              ),
              SizedBox(
                height: 15.0,
              ),
              CustomButton(
                text: "회원가입",
                textColor: Colors.white,
                color: Colors.lightGreen,
                onPressed: () => print("REGISTER"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
