import 'dart:async';

class Cake{}
class Order{
  String type;
  Order(this.type);
}

void main() {
  final controller = StreamController();
  
  final order = Order('chocolate');
  
  final baker = StreamTransformer.fromHandlers(
    handleData: (cakeType, sink) {
      if (cakeType == 'chocolate') {
        sink.add(Cake);
      } else {
        sink.addError('I can only bake chocolate!');
      }
    }
  );
  
  // The cake order is placed
  controller.sink.add(order);
  
  // The bakery responds...
  controller.stream
    // by extracting the order type
    .map((order) => order.type)
    // The baker evaluates the order - Is it chocolate? - and responds
    .transform(baker)
    // And we listen for the response and print it
    .listen(
      (cake) => print('Here is your $cake'),
      onError: (err) => print(err)
  );
}

// See dart api docs for dart:async for more on StreamController class
