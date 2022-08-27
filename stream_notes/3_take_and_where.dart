import 'dart:html';

// Demo of take and where - this page listens to an html page
void main() {
  final ButtonElement button = querySelector('button') as ButtonElement;
  final InputElement input = querySelector('input') as InputElement;

  button.onClick
    .take(4)
    .where((event) => input.value == 'banana')
    .listen(
      (event) => print('You got it!'),
      onDone: () => print("Sorry, you are out of guesses.")
    );
}

