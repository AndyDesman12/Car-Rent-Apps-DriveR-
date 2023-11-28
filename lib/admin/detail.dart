import 'package:code/admin/homeAdmin.dart';
import 'package:flutter/material.dart';


class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Detail'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[600],
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40.0, 20, 20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 30.0),
              child: Card(
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
            ),
            Card(
              elevation: 5.0,
              color: Colors.white,
              shadowColor: Colors.lightBlue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(10.0, 10, 0, 0),
                        child: const Icon(
                          Icons.people,
                          color: Colors.black,
                          size: 26,
                        ),
                      ),

                      Container(
                        margin: const EdgeInsets.fromLTRB(10.0, 10, 0, 0),
                        child: const Text(
                          'Andy Desman',
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
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
                          size: 26,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10.0, 10, 0, 0),
                        child: const Text(
                          '1234567890123456',
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 30.0),
                    child: Card(
                      elevation: 5.0,
                      color: Colors.white,
                      shadowColor: Colors.lightBlue,
                      child: Container(
                        child: const Image(
                          image: AssetImage(
                            'assets/ktp.jpg',
                          ),
                          height: 150,
                          width: 220,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                        margin: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.punch_clock),
                          label: const Text('Validation'),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.lightBlue, // Set the text color
                            elevation: 5,
                            textStyle: TextStyle(
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            )// Set the button's elevation
                            // You can customize other button properties here
                          ),
                        )
                    ),
                  ),
                ],
              ),
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
                  MaterialPageRoute(builder: (context) => const HomeAdmin()),
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
                icon: const Icon(Icons.shopping_cart_checkout),
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