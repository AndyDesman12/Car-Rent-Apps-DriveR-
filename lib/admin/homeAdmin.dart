import 'package:code/admin/addCar.dart';
import 'package:flutter/material.dart';
import 'checkout.dart';


class HomeAdmin extends StatefulWidget {
  const HomeAdmin({super.key});

  @override
  State<HomeAdmin> createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  int hargaAvanza = 100000;

  int stokAvanza = 1;

  int hargaInnova = 150000;

  int stokInnova = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('DriveR (Admin)'),
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
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(20.0, 5, 0, 0),
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
                          width: 40,
                          height: 40,
                          margin: const EdgeInsets.all(10.0),
                          child: Card(
                            elevation: 5.0,
                            child: IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  stokAvanza -= 1;
                                });
                              },
                              color: Colors.black,
                              iconSize: 17,
                            ),
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          margin: const EdgeInsets.fromLTRB(0, 10.0, 10.0, 10.0),
                          child: Card(
                            elevation: 5.0,
                            child: IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  stokAvanza += 1;
                                });
                              },
                              color: Colors.black,
                              iconSize: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20.0, 5, 0, 0),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const LoginAdmin()),
                          // );
                        },
                        icon: const Icon(Icons.edit),
                        label: const Text('Edit'),
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0
                          ),
                          elevation: 5, // Button elevation
                          padding: const EdgeInsets.all(7.0), // Button padding
                        ),
                      ),
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
                    Row(
                      children: [
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
                          width: 40,
                          height: 40,
                          margin: const EdgeInsets.all(10.0),
                          child: Card(
                            elevation: 5.0,
                            child: IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  stokInnova -= 1;
                                });
                              },
                              color: Colors.black,
                              iconSize: 17,
                            ),
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          margin: const EdgeInsets.fromLTRB(0, 10.0, 10.0, 10.0),
                          child: Card(
                            elevation: 5.0,
                            child: IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  stokInnova += 1;
                                });
                              },
                              color: Colors.black,
                              iconSize: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20.0, 5, 0, 0),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.edit),
                        label: const Text('Edit'),
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0
                          ),
                          elevation: 5, // Button elevation
                          padding: const EdgeInsets.all(7.0), // Button padding
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => const addCar()),
          );
        },
        child: const Icon(Icons.add),
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
              icon: const Icon(Icons.shopping_cart_checkout),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Checkout()),
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