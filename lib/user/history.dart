import 'package:flutter/material.dart';
import 'homeUser.dart';


class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  int hargaAvanza = 100000;
  int stokAvanza = 1;
  int hargaInnova = 150000;
  int stokInnova = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('History'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[600],
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 40.0, 0, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  elevation: 5.0,
                  color: Colors.white,
                  shadowColor: Colors.lightBlue,
                  child: Container(
                    child: const Image(
                      image: AssetImage(
                        'assets/avanza.jpg',
                      ),
                      height: 150,
                      width: 220,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                      child: const Text(
                        'Status',
                        style: TextStyle(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                      child: const Text(
                        'Menunggu',
                        style: TextStyle(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(10.0, 10, 0, 0),
                          child: const Icon(
                            Icons.people,
                            color: Colors.black,
                          ),
                        ),

                        Container(
                          margin: const EdgeInsets.fromLTRB(7.0, 10, 0, 0),
                          child: const Text(
                            'Andy Desman',
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(10.0, 10, 0, 0),
                          child: const Icon(
                            Icons.card_membership,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(7.0, 5, 0, 0),
                          child: const Text(
                            '1234567890123456',
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  margin: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),
                  elevation: 5.0,
                  color: Colors.white,
                  shadowColor: Colors.lightBlue,
                  child: Container(
                    child: const Image(
                      image: AssetImage(
                        'assets/innova.jpg',
                      ),
                      height: 150,
                      width: 220,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                      child: const Text(
                        'Status',
                        style: TextStyle(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      child: const Text(
                        'Selesai',
                        style: TextStyle(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(20.0, 10, 0, 0),
                          child: const Icon(
                            Icons.people,
                            color: Colors.black,
                          ),
                        ),

                        Container(
                          margin: const EdgeInsets.fromLTRB(7.0, 10, 0, 0),
                          child: const Text(
                            'Fiqih',
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(20.0, 10, 0, 0),
                          child: const Icon(
                            Icons.card_membership,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(7.0, 5, 0, 0),
                          child: const Text(
                            '1234567890789456',
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.lightBlue,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeUser()),
                );
              },
              color: Colors.white,
            ),
            Card(
              elevation: 20.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: IconButton(
                icon: const Icon(Icons.history),
                onPressed: () {},
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}