import 'package:app1/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}
class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MainPage(color: Colors.white, )
    );
  }
}


