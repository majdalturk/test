import 'package:flutter/material.dart';

class onbording3 extends StatelessWidget {
  const onbording3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20),
              child: SizedBox(
                width: 240,
                height: 220,
                child: Image.asset("assets/cuate (2).jpg"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50, left: 40),
              child: Text(
                'Check Progress',
                style: TextStyle(fontSize: 24),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'See how much you have \n done from your tasks',
                style: TextStyle(
                    color: Color.fromARGB(255, 129, 129, 129), fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140, top: 170),
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
                              color: Colors.black38)),
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
                              color: Color(0xFF8BA8B5)),
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
