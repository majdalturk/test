import 'package:coffee_shop_app/main.dart';
import 'package:flutter/material.dart';

class LogInpage1 extends StatelessWidget {
  const LogInpage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //container of baackground image
      body: Container(
        width: 2000,
        height: 2000,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/login.jpg"))),
        child: Column(
          children: [
            //coffee shop text
            const Padding(
              padding: EdgeInsets.only(top: 350, left: 0),
              child: Text(
                'COFFEE SHOP',
                style: TextStyle(fontSize: 36, color: Color(0xFF230C02)),
              ),
            ),
            //Enjoy the drink coffee
            const Padding(
              padding: EdgeInsets.only(top: 37, left: 0),
              child: Text(
                'Enjoy the drink coffee .',
                style: TextStyle(fontSize: 16, color: Color(0xFF230C02)),
              ),
            ),
            //container of next page
            Padding(
              padding: const EdgeInsets.only(top: 125, left: 20),
              child: InkWell(
                onTap: () {
                  controller.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInCirc);
                },
                child: Container(
                    width: 280,
                    height: 47,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 47, 31, 31)),
                    child: const Center(
                      child: Text(
                        'SHOP NOW',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
