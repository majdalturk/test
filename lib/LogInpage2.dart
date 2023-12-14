import 'package:coffee_shop_app/main.dart';
import 'package:flutter/material.dart';

class LogInpage2 extends StatelessWidget {
  const LogInpage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 2000,
        height: 2000,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.contain, image: AssetImage("assets/login.jpg"))),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 350, left: 0, right: 150),
              child: Text(
                'Welcome \n Back!',
                style: TextStyle(fontSize: 28, color: Color(0xFF230C02)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 125, left: 30),
              child: InkWell(
                onTap: () {
                  controller.previousPage(
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
                        'Loign',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 30),
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
                        border: Border.all(
                          color: Color.fromARGB(239, 35, 12, 2),
                          width: 1.5,
                        )),
                    child: const Center(
                      child: Text(
                        'Create an account',
                        style: TextStyle(
                            color: Color.fromARGB(239, 35, 12, 2),
                            fontSize: 16),
                      ),
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Forgot your password?'),
            )
          ],
        ),
      ),
    );
  }
}
