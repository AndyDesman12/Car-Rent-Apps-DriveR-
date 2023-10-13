import 'package:flutter/material.dart';
import 'homeAdmin.dart';
import 'checkout.dart';
import 'package:code/user/daftarAkun.dart';





class addCar extends StatefulWidget {
  const addCar({super.key});

  @override
  State<addCar> createState() => _addCarState();
}

class _addCarState extends State<addCar> {
  final _formKey = GlobalKey<FormState>();
  String _textFieldValue = ''; // To store the text field value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Add New Car'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[600],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Align(
                  alignment: FractionalOffset.center,
                  child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.lightBlue,
                          width: 2.0,
                        ),
                      ),
                      margin: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add_a_photo_outlined),
                        label: const Text('Upload Foto Mobil'),
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.lightBlue,
                            backgroundColor: Colors.white,
                            elevation: 10,
                            textStyle: TextStyle(
                              fontFamily: 'Outfit',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,

                            )
                        ),
                      )
                  ),
                ),
                Align(
                  alignment: FractionalOffset.topCenter,
                  child: Container(
                    width: 200,
                    margin: const EdgeInsets.fromLTRB(0, 40.0, 0, 0),
                    decoration: const BoxDecoration(
                      color: Colors.white12,
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Nama',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter this field';
                        }
                        return null; // Return null for no error
                      },
                      onSaved: (value) {
                        _textFieldValue = value!;
                      },
                    ),
                  ),
                ),

                Align(
                  alignment: FractionalOffset.topCenter,
                  child: Container(
                    width: 200,
                    margin: const EdgeInsets.fromLTRB(0,10.0, 0, 0),
                    decoration: const BoxDecoration(
                      color: Colors.white12,
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Harga',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter this field';
                        }
                        return null; // Return null for no error
                      },
                      onSaved: (value) {
                        _textFieldValue = value!;
                      },
                    ),
                  ),
                ),

                Align(
                  alignment: FractionalOffset.topCenter,
                  child: Container(
                    width: 200,
                    margin: const EdgeInsets.fromLTRB(0,10.0, 0, 0),
                    decoration: const BoxDecoration(
                      color: Colors.white12,
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Stok',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter this field';
                        }
                        return null; // Return null for no error
                      },
                      onSaved: (value) {
                        _textFieldValue = value!;
                      },
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 50.0, 0, 0),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, save the form data and take action
                        _formKey.currentState!.save();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomeAdmin()
                          ),
                        );
                      }
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('Tambah'),
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0
                      ),
                      elevation: 5, // Button elevation
                      padding: const EdgeInsets.all(16.0), // Button padding
                    ),
                  ),

                ),

              ],
            ),
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