import 'dart:async';
import 'validators.dart';

// with is how to use a mixin
class Bloc with Validators {
  // underscore makes the field private - won't show up in helptext
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  // Getters to add data to stream
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  // Change data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  dispose() {
    _email.close();
    _password.close();
  }
}
