import 'package:flutter/material.dart';
import 'package:where_we_go/animation/delayedAnimation.dart';
import 'package:where_we_go/app/sign_in/SignInLogo.dart';
import 'package:where_we_go/app/sign_in/signInButton.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  final FocusNode _passwordFocusNode = new FocusNode();
  final FocusNode _emailFocusNode = new FocusNode();

  TextField _buildEmailTextField() {
    return TextField(
      controller: _emailController,
      focusNode: _emailFocusNode,
      autocorrect: false,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
//        enabled: model.isLoading == false,
        border: InputBorder.none,
//        labelText: "Email",
        hintText: "test@test.com",
        icon: Icon(
          Icons.email,
          size: 22.0,
        ),
//        errorText: model.emailErrorText,
      ),
//      onChanged: model.updateEmail,
//      onEditingComplete: () => _emailEditingComplete(),
    );
  }

  SignInButton _buildSubmit() {
    return SignInButton(
      text: "로그인",
      textColor: Colors.white,
      color: Colors.lightGreen,
      height: 45.0,
      onPressed: () => print("로그인"),
    );
  }

  SignInButton _buildBackButton(BuildContext context) {
    return SignInButton(
      text: "뒤로가기",
      textColor: Colors.white,
      color: Colors.grey,
      height: 45.0,
      onPressed: () => Navigator.pop(context),
    );
  }

  TextField _buildPasswordTextField() {
    return TextField(
      controller: _passwordController,
      focusNode: _passwordFocusNode,
      obscureText: true,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        hintText: "비밀번호",
        border: InputBorder.none,
        icon: Icon(
          Icons.vpn_key,
          size: 22.0,
        ),
//        labelText: "Password",
      ),
    );
  }

  List<Widget> _buildCardChildren(BuildContext context) {
    return [
      _buildEmailTextField(),
      _buildPasswordTextField(),
      SizedBox(height: 10.0),
      _buildSubmit(),
      SizedBox(height: 10.0),
      _buildBackButton(context)
    ];
  }

  Card _buildCard(BuildContext context) {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding:
        const EdgeInsets.symmetric(vertical: 18.0, horizontal: 25.0),
        child: Column(
          children: _buildCardChildren(context),
        ),
      ),
    );
  }

  Widget _buildContext(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DelayedAnimation(
          child: SignInLogo(
            text: "로그인",
            radius: 50.0,
            circleColor: Colors.green,
            textColor: Colors.green,
          ),
        ),
        SizedBox(height: 20.0),
        DelayedAnimation(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: _buildCard(context),
          ),
          delay: 1000,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContext(context),
    );
  }
}
