import 'dart:html';
import 'dart:async';

// Demo of email validation - this page listens to an html page
// with an input and an empty div for an error msg
void main() {
  final InputElement input = querySelector('input') as InputElement;
  final DivElement div = querySelector('div') as DivElement;

  final validator = StreamTransformer.fromHandlers(
    handleData: (dynamic inputValue, sink) {
      print(inputValue);
      if (inputValue.contains('@')) {
        sink.add(inputValue);
      } else {
        sink.addError('Please enter a valid email');
      }
    }
  );

  input.onInput
    // Extract the value typed into the input field
    .map((dynamic event) => event.target.value)
    // Evaluate the input value according to the critera in 'validator', above
    .transform(validator)
    // And we listen for the response and add or clear the error msg
    .listen(
      (val) => div.innerHtml = '',
      onError: (err) => div.innerHtml = err
    );
}

