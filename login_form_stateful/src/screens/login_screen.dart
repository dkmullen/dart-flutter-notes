import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  var email;
  var password;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Form(
          key: formKey,
          child: Column(
            children: [
              emailField(),
              passwordField(),
              spacer(),
              submitButton(),
            ],
          )),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
      validator: validateEmail,
      onSaved: (String? value) {
        email = (value);
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
      ),
      validator: validatePassword,
      onSaved: (value) {
        password = value;
      },
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {
        // print(formKey.currentState);
        if (formKey.currentState?.validate() != null &&
            formKey.currentState?.validate() == true) {
          formKey.currentState?.save();
          print('Print my $email and $password');
        }
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.blueGrey,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        elevation: 0.0,
      ),
      child: const Text('Submit'),
    );
  }

  Widget spacer() {
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
    );
  }
}
