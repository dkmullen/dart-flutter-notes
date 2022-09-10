import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(margin: const EdgeInsets.only(top: 20.0)),
            submitButton(),
          ],
        ));
  }

  Widget emailField() {
    return const TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'you@example.com',
          labelText: 'Email address',
        ));
  }

  Widget passwordField() {
    return const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        labelText: 'Password',
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {},
      child: const Text('Log in'),
    );
  }
}
