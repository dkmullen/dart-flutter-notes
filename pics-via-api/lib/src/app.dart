import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'dart:convert';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => AppState();
}

// Create a class that will be our custom widget (extend Stateless widget class
// 'State' is generic; <App> is the specific instance
class AppState extends State<App> {
  // const AppState({Key? key}) : super(key: key);
  int counter = 0;
  List<ImageModel> images = [];
  void fetchImage() async {
    counter++;
    final response = await get(
        Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter'));
    final imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });
  }

// Must define a build method that returns our other widgets
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        appBar: AppBar(
          title: const Text('Let\'s see some images!'),
          backgroundColor: const Color.fromARGB(255, 51, 66, 146),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 64, 107, 85),
          onPressed: fetchImage,
          child: const Icon(Icons.add),
          // () => {
          //   // setState is a built in method of State, which this class extends (above)
          //   // AppState is cached and doesn't get recreated; only counter does
          //   setState(() {
          //     counter += 1;
          //   })
          // },
        ),
      ),
    );
  }
}
