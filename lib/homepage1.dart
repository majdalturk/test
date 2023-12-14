import 'package:flutter/material.dart';

class homepage1 extends StatelessWidget {
  const homepage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 238, 220, 198),
        leading: Center(
            child: Container(
          child: const Column(
            children: [
              Icon(
                Icons.search,
                color: Color.fromARGB(255, 35, 12, 2),
              )
            ],
          ),
        )),
        title: const Text(
          'Good day, Selenay',
          style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 35, 12, 2)),
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: Color.fromARGB(255, 35, 12, 2),
          ),
          Icon(
            Icons.menu,
            color: Color.fromARGB(255, 35, 12, 2),
          ),
        ],
      ),
      body: Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 35, 12, 2)),
          child: ListView(children: [
            Container(
              width: 350,
              height: 100,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 238, 220, 198)),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 150),
                    child: Text(
                      'What would you like \n to drink today?',
                      style: TextStyle(
                          color: Color.fromARGB(255, 35, 12, 2), fontSize: 16),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: Text('Popular',
                            style: TextStyle(
                                backgroundColor: Color.fromARGB(255, 35, 12, 2),
                                color: Color.fromARGB(255, 238, 220, 198))),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 10),
                        child: Text(
                          'Black coffee',
                          style:
                              TextStyle(color: Color.fromARGB(255, 35, 12, 2)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 10),
                        child: Text(
                          'Winter special',
                          style:
                              TextStyle(color: Color.fromARGB(255, 35, 12, 2)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 10),
                        child: Text(
                          'Decaff',
                          style:
                              TextStyle(color: Color.fromARGB(255, 35, 12, 2)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: 300,
              height: 145,
              child: Padding(
                padding: const EdgeInsets.only(top: 27, right: 25, left: 25),
                child: Container(
                  width: 40,
                  height: 105,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 238, 220, 198),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: const Card(
                    color: Color.fromARGB(255, 238, 220, 198),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Black coffee',
                            style: TextStyle(fontSize: 12),
                          ),
                          subtitle: Row(
                            children: [
                              Text(
                                'ICED AMERICANO',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 35, 12, 2)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 85, bottom: 5),
                                child: Image(
                                  image: AssetImage("assets/Rectangle.jpg"),
                                  width: 70,
                                  height: 68,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(top: 27, right: 25, left: 25),
                child: Container(
                  width: 40,
                  height: 105,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 238, 220, 198),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: const Card(
                    color: Color.fromARGB(255, 238, 220, 198),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Winter special',
                            style: TextStyle(fontSize: 12),
                          ),
                          subtitle: Row(
                            children: [
                              Text(
                                'CAPPUCINO LATTE',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 35, 12, 2)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 85, bottom: 5),
                                child: Image(
                                  image: AssetImage("assets/image 430.jpg"),
                                  width: 70,
                                  height: 68,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(top: 27, right: 25, left: 25),
                child: Container(
                  width: 40,
                  height: 105,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 238, 220, 198),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: const Card(
                    color: Color.fromARGB(255, 238, 220, 198),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'DECAFF',
                            style: TextStyle(fontSize: 12),
                          ),
                          subtitle: Row(
                            children: [
                              Text(
                                'SILKY CAFEAU LAIT',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 35, 12, 2)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 85, bottom: 5),
                                child: Image(
                                  image: AssetImage("assets/image 1.jpg"),
                                  width: 70,
                                  height: 68,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(top: 27, right: 25, left: 25),
                child: Container(
                  width: 40,
                  height: 105,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 238, 220, 198),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: const Card(
                    color: Color.fromARGB(255, 238, 220, 198),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'CHOCOLATE',
                            style: TextStyle(fontSize: 12),
                          ),
                          subtitle: Row(
                            children: [
                              Text(
                                'Iced Chocolate',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 35, 12, 2)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 105, bottom: 5),
                                child: Image(
                                  image: AssetImage(
                                      "assets/unsplash_qBvPsW2PZVE.jpg"),
                                  width: 70,
                                  height: 68,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 27, right: 25, left: 25),
              child: Container(
                width: 40,
                height: 100,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 238, 220, 198),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: const ListTile(
                  title: Text(
                    'Winter special',
                    style: TextStyle(fontSize: 12),
                  ),
                  subtitle: Text(
                    'CAPPUCINO LATTE',
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 35, 12, 2)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 27, right: 25, left: 25),
              child: Container(
                width: 40,
                height: 100,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 238, 220, 198),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: const ListTile(
                  title: Text(
                    'DECAFF',
                    style: TextStyle(fontSize: 12),
                  ),
                  subtitle: Text(
                    'SILKY CAFEAU LAIT',
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 35, 12, 2)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 27, right: 25, left: 25),
              child: Container(
                width: 40,
                height: 100,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 238, 220, 198),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: const ListTile(
                  title: Text(
                    'CHOCOLATE',
                    style: TextStyle(fontSize: 12),
                  ),
                  subtitle: Text(
                    'Iced Chocolate',
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 35, 12, 2)),
                  ),
                ),
              ),
            ),
          ])),
      bottomSheet: Container(
        height: 65,
        decoration: BoxDecoration(color: Color.fromARGB(255, 238, 220, 198)),
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 35, bottom: 4),
              child: Icon(
                Icons.home_outlined,
                size: 40,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50, bottom: 4),
              child: Icon(
                Icons.shopping_cart,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50, bottom: 4),
              child: Icon(
                Icons.heart_broken,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50, bottom: 4),
              child: Icon(
                Icons.person,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
