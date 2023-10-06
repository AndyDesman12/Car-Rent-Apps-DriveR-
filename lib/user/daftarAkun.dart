import 'package:flutter/material.dart';
import 'package:drop_shadow/drop_shadow.dart';
import '../main.dart';

class CharacterLimitTextField extends StatefulWidget {
  final int maxCharacters; // Maximum number of characters allowed
  final Function(String)? onChanged; // Callback for text changes

  CharacterLimitTextField({required this.maxCharacters, this.onChanged});

  @override
  _CharacterLimitTextFieldState createState() => _CharacterLimitTextFieldState();
}
class _CharacterLimitTextFieldState extends State<CharacterLimitTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Add a listener to the text controller to check the character count
    _controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    // Get the current text from the controller
    final text = _controller.text;

    // Check if the character count exceeds the maximum
    if (text.length > widget.maxCharacters) {
      // Truncate the text to the maximum character count
      final truncatedText = text.substring(0, widget.maxCharacters);
      _controller.value = _controller.value.copyWith(
        text: truncatedText,
        selection: TextSelection.collapsed(offset: truncatedText.length),
      );
    }

    // Call the onChanged callback if provided
    if (widget.onChanged != null) {
      widget.onChanged!(_controller.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: "NIK",
        hintText: 'Enter Your NIK',
      ),
    );
  }
}


void main() => runApp(const MaterialApp(
  home: Login(),
));

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
                margin: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
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
                child: CharacterLimitTextField(
                  maxCharacters: 16, // Set your desired character limit here
                  onChanged: (text) {
                    // Handle text changes here if needed
                  },
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
                        MaterialPageRoute(builder: (context) => const Login()),
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