import 'package:flutter/material.dart';
import 'homeUser.dart';
import 'history.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;





class uploadKtp extends StatefulWidget {
  const uploadKtp({super.key});

  @override
  State<uploadKtp> createState() => _uploadKtpState();
}

class _uploadKtpState extends State<uploadKtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Validation'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[600],
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 0),
        child: Column(
          children: [
            Align(
              alignment: FractionalOffset.center,
              child: Container(
                width: 300,
                  height: 300,
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
                    label: const Text('Upload KTP'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.lightBlue,
                      backgroundColor: Colors.white,
                      elevation: 10,
                      textStyle: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,

                      )
                    ),
                  )
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),
              child: Text(
                'Pastikan Informasi KTP sesuai dengan Pendaftaran Akun',
                style: const TextStyle(
                  color: Colors.redAccent,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.bold,
                  fontSize: 19.0,
                ),
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
                  MaterialPageRoute(builder: (context) => const HomeUser()),
                );
              },
              color: Colors.white,
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