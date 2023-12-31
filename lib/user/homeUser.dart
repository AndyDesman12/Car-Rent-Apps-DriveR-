import 'package:flutter/material.dart';
import 'history.dart';
import 'uploadKtp.dart';

class HomeUser extends StatefulWidget {
  const HomeUser({super.key});

  @override
  State<HomeUser> createState() => _HomeUserState();
}
class _HomeUserState extends State<HomeUser> {
  int hargaAvanza = 100000;
  int stokAvanza = 1;
  int hargaInnova = 150000;
  int stokInnova = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('DriveR'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[600],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),
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
                  Container(
                    margin: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                          child: const Text(
                            'Avanza',
                            style: TextStyle(
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                          child: Text(
                            'RP. $hargaAvanza',
                            style: const TextStyle(
                              color: Colors.lightBlue,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(20.0, 5.0, 0, 0),
                          child: Text(
                            'Stok: $stokAvanza',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.normal,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                            child: ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const uploadKtp()),
                                );
                              },
                              icon: const Icon(Icons.shopping_cart),
                              label: const Text('Pesan'),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white, backgroundColor: Colors.green, // Set the text color
                                elevation: 5, // Set the button's elevation
                                // You can customize other button properties here
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Container(
                margin: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Card(
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
                    Container(
                      margin: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                            child: const Text(
                              'Innova',
                              style: TextStyle(
                                fontFamily: 'Outfit',
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                            child: Text(
                              'RP. $hargaInnova',
                              style: const TextStyle(
                                color: Colors.lightBlue,
                                fontFamily: 'Outfit',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(20.0, 5, 0, 0),
                            child: Text(
                              'Stok: $stokInnova',
                              style: const TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Outfit',
                                fontWeight: FontWeight.normal,
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const uploadKtp()),
                                  );
                                },
                                icon: const Icon(Icons.shopping_cart),
                                label: const Text('Pesan'),
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white, backgroundColor: Colors.green, // Set the text color
                                  elevation: 5, // Set the button's elevation
                                  // You can customize other button properties here
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.lightBlue,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              elevation: 20.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {},
                color: Colors.black,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.history),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const History()),
                );
              },
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}