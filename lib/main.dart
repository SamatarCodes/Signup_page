import 'package:flutter/material.dart';
import 'constants.dart';
import 'login_page.dart';
import 'signup_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => LoginPage(),
        '/signup': (context) => SignUp(),
      },
      title: 'Login Page',
      theme: ThemeData(
        primaryColor: Colors.blue,
        textTheme: TextTheme(
          display1: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            letterSpacing: 2.0,
            fontSize: 40.0,
          ),
          display2: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          button: TextStyle(color: kButtonColor),
          headline: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20.0,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black.withOpacity(.30),
            ),
          ),
        ),
      ),
      initialRoute: '/',
    );
  }
}
