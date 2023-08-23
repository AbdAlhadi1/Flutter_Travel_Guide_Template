import 'package:flutter/material.dart';
import 'home_page.dart';
import 'introduction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return(
       MaterialApp(
        home:const IntroductionScreen1(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.lightBlue
        ),
      )
    );
  }
}


