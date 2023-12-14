import 'package:coffee_shop_app/LogInpage1.dart';
import 'package:coffee_shop_app/LogInpage2.dart';
import 'package:coffee_shop_app/LogInpage3.dart';
import 'package:coffee_shop_app/homepage1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

List<Widget> pages = [       
  const LogInpage1(),
  const LogInpage2(),
  const LogIn3(),
  const homepage1()
];
PageController controller = PageController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: true),
        home: Scaffold(
            body: PageView.builder(
              physics: NeverScrollableScrollPhysics(),
          itemCount: pages.length,
          controller: controller,
          itemBuilder: (context, index) => pages[index],
        )));
  }
}
