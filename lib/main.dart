import 'package:flutter/material.dart';
import 'package:to_do/onbordin2.dart';
import 'package:to_do/onbording1.dart';
import 'package:to_do/onbording3.dart';

void main() {
  runApp(const MyApp());
}

List<Widget> pages = [
  onbording1(),
  onbording2(),
  onbording3(),
];
bool magic = false;
int ElevatedButtonext = 0;
PageController controller = PageController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: true),
        home: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 250, top: 20),
                child: TextButton(
                    onPressed: () {
                      controller.jumpToPage(int.fromEnvironment("splash"));
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(color: Color(0xFF8BA8B5)),
                    )),
              ),
              SizedBox(
                width: 400,
                height: 620,
                child: PageView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: pages.length,
                  controller: controller,
                  itemBuilder: (context, index) => pages[index],
                ),
              ),
              const ElevatedButtonNext(),
            ],
          ),
        ));
  }
}

class ElevatedButtonNext extends StatefulWidget {
  const ElevatedButtonNext({super.key});

  @override
  State<ElevatedButtonNext> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ElevatedButtonNext> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        width: 317,
        height: 54,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color(0xFF8BA8B5))),
            onPressed: () {
              setState(() {
                controller.nextPage(
                    duration: const Duration(seconds: 1), curve: Curves.linear);
                ElevatedButtonext++;
                magic = !magic;
              });
            },
            child: Center(
              child: Text(
                !magic ? "Next" : "let's start",
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            )),
      ),
    );
  }
}
