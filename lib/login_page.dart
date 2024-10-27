import 'package:flutter/material.dart';
import 'package:flutter_website/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.web, // Use the web options
  );
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  // Method for user sign-in
  // Method to handle login
  Future<void> _login() async {
    try {
      // Sign in with email and password using Firebase Authentication
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      );

      // If login is successful, navigate to the next screen
      if (userCredential.user != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage()), // Your next screen widget
        );
      }
    } on FirebaseAuthException catch (e) {
      // Handle login errors
      if (e.code == 'user-not-found') {
        _showErrorDialog("No user found for that email.");
      } else if (e.code == 'wrong-password') {
        _showErrorDialog("Incorrect password provided.");
      } else {
        _showErrorDialog("Login failed. Please try again.");
      }
    }
  }

  // Helper function to show error dialog
  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text("Error"),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text("Okay"),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController rollnumber = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
              body: Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 750,
                    width: 650,
                    color: Colors.green,
                  ),
                  Image.asset(
                    'assets/Images/Solar System.png',
                    height: 750,
                    width: 650,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 200),
                      child: Image.asset(
                        'assets/Images/Hipman.png',
                        height: 750,
                        width: 350,
                      ))
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 350),
                    child: Text("Welcome ",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 75,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Lato',
                          shadows: [
                            Shadow(
                              offset: Offset(
                                  10.0, 10.0), // Horizontal and vertical offset
                              blurRadius: 5.0, // Blur radius
                              color:
                                  Colors.grey.withOpacity(0.5), // Shadow color
                            ),
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Text("Student Feedback and Complaint",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 55,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Lato')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 610),
                    child: Text("System",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 55,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Lato')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 300),
                    child: Text("Welcome back! Please login to your account",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 25,
                            fontWeight: FontWeight.w400)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 650),
                    child: Text("Roll Number",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 25,
                            fontWeight: FontWeight.w400)),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: SizedBox(
                        height: 100,
                        width: 750,
                        child: TextField(
                            controller: rollnumber,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey)))),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 650),
                    child: Text("Password",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 25,
                            fontWeight: FontWeight.w400)),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: SizedBox(
                        height: 100,
                        width: 750,
                        child: TextField(
                            controller: password,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey)))),
                      )),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 600),
                        child: Text("Remember Me",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 25,
                                fontWeight: FontWeight.w400)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 550),
                        child: Text("Forgot Password?",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 25,
                                fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 650),
                    child: SizedBox(
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                          onPressed: _login,
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero)),
                          child: Text('Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ))),
                    ),
                  )
                ],
              )
            ],
          ));
        }
  }


 