import 'package:flutter/material.dart';


class carInfo extends StatelessWidget {
  const carInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Information'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[600],
      ),

      body: const Padding(
        padding: EdgeInsets.fromLTRB(0, 40.0, 0, 0),
        child: Column(
          children: [


          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.lightBlue,
        child: Container(height: 50.0),
      ),
    );
  }
}