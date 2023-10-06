import 'package:flutter/material.dart';
import 'package:drop_shadow/drop_shadow.dart';
import 'user/daftarAkun.dart';
import 'user/homeUser.dart';

import 'admin/loginAdmin.dart';


void main() => runApp(const MaterialApp(
      home: Login(),
    ));
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue[600],
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
        child: Column(
          children: [
            Align(
              alignment: FractionalOffset.topCenter,
              child: Container(
                height: 150,
                width: 150,
                margin: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),
                decoration: const BoxDecoration(
                  color: Colors.white12,
                ),
                child: DropShadow(
                  blurRadius: 4.5,
                  offset: const Offset(2, 2),
                  spread: 1,
                  child: Image.asset(
                    'assets/Logo_DriveR.png',
                  ),
                ),
              ),
            ),


            Align(
              alignment: FractionalOffset.topCenter,
              child: Container(
                width: 130,
                margin: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),
                decoration: const BoxDecoration(
                  color: Colors.white12,
                ),
                child: const DropShadow(
                  blurRadius: 2,
                  offset: Offset(0, 4),
                  spread: 0,
                  child: Text(
                    'DriveR',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Outfit',
                    ),
                  ),
                ),
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
                child: const TextField(
                  keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: 'Enter Your Email',
                    ),
                ),
              ),
            ),


            Align(
              alignment: FractionalOffset.topCenter,
              child: Container(
                width: 200,
                margin: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
                decoration: const BoxDecoration(
                  color: Colors.white12,
                ),
                child: const TextField(
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: 'Enter Your Password',
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 50.0, 0, 0),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomeUser()
                          ),
                      );
                    },
                    icon: const Icon(Icons.login),
                    label: const Text('Login'),
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
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 50.0, 0, 0),
                  child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DaftarAkun()),
                        );
                      },
                      icon: const Icon(Icons.app_registration),
                      label: const Text('Daftar Akun'),
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
            Container(
              margin: const EdgeInsets.fromLTRB(0, 50.0, 0, 0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginAdmin()),
                  );
                },
                icon: const Icon(Icons.person),
                label: const Text('Admin'),
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


      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.lightBlue,
        child: Container(height: 50.0),
      ),

    );
  }
}




