import 'package:flutter/material.dart';
import 'package:drop_shadow/drop_shadow.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';




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
                          MaterialPageRoute(builder: (context) => HomeUser()
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
                          MaterialPageRoute(builder: (context) => DaftarAkun()),
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
                onPressed: () {},
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




class DaftarAkun extends StatelessWidget {
  const DaftarAkun({super.key});

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
                        MaterialPageRoute(builder: (context) => infoPribadi()),
                      );
                    },
                    icon: const Icon(Icons.app_registration),
                    label: const Text('Lanjut'),
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
class infoPribadi extends StatelessWidget {
  const infoPribadi({super.key});

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
                    labelText: "Name",
                    hintText: 'Enter Your Name',
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
                    labelText: "Address",
                    hintText: 'Enter Your Address',
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
                    labelText: "NIK",
                    hintText: 'Enter Your NIK',
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
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    icon: const Icon(Icons.app_registration),
                    label: const Text('Daftar'),
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



class HomeUser extends StatefulWidget {
  const HomeUser({super.key});

  @override
  State<HomeUser> createState() => _HomeUserState();
}
class _HomeUserState extends State<HomeUser> {
  int hargaAvanza = 200000;
  int stokAvanza = 1;
  int hargaInnova = 250000;
  int stokInnova = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('DriveR'),
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
                    child: Image(
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
                      margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Avanza',
                        style: TextStyle(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                      child: Text(
                        'RP. $hargaAvanza',
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 5, 0, 0),
                      child: Text(
                        'Stok: $stokAvanza',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.normal,
                          fontSize: 17.0,
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
                  margin: EdgeInsets.fromLTRB(0, 30.0, 0, 0),
                  elevation: 5.0,
                  color: Colors.white,
                  shadowColor: Colors.lightBlue,
                  child: Container(
                    child: Image(
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
                      margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Innova',
                        style: TextStyle(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                      child: Text(
                        'RP. $hargaInnova',
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 5, 0, 0),
                      child: Text(
                        'Stok: $stokInnova',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.normal,
                          fontSize: 17.0,
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

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.lightBlue,
        child: Container(height: 50.0),
      ),
    );
  }
}


