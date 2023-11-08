import 'package:flutter/material.dart';
import 'package:to_do/main.dart';

class onbording1 extends StatelessWidget {
  const onbording1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Image.asset("assets/cuate.jpg"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 70),
              child: Text(
                'Write Lists',
                style: TextStyle(fontSize: 24),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                'write your tasks in a list and \n check them when done !',
                style: TextStyle(
                    color: Color.fromARGB(255, 129, 129, 129), fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140, top: 80),
              child: Padding(
                padding: const EdgeInsets.only(right: 12, left: 12),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                          width: 12,
                          height: 12,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                              color: Color(0xFF8BA8B5))),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                              color: Colors.black38),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                              color: Colors.black38),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
