import 'dart:html';

// Stream example: Click a button every second...or else!
// This dart file is attached to an html page; would be transformed into JS

void main() {
  final ButtonElement button = querySelector('button') as ButtonElement;
  
  button.onClick
    .timeout(
      Duration(seconds: 1),
      onTimeout: (sink) => sink.addError('Now ya effed up!')
    )
    .listen(
      (event) {},
      onError: (err) => print(err)
     );
    

}
