import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:signinpagemine/ReusableTextField.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('images/sam.png'),
                      radius: 30.0,
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(bottom: 10.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      child: Text(
                        'Sign In',
                        style: Theme.of(context).textTheme.headline,
                      ),
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 10.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
//                      border: Border(
//                        bottom: BorderSide(
//                          color: Colors.black,
//                        ),
//                      ),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: "Welcome back,\n",
                                style: Theme.of(context).textTheme.display1,
                              ),
                              TextSpan(
                                text: "Samatar",
                                style: Theme.of(context).textTheme.display2,
                              ),
                            ]),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        ReusableTextField(
                          hintText: 'Email address',
                          obscureText: false,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ReusableTextField(
                          hintText: 'Password',
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
//                        SOCIAL MEDIA ICONS
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.facebookF,
                              size: 28.0,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Icon(
                              FontAwesomeIcons.googlePlusG,
                              size: 28.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text('Forgot password?'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Stack(
                overflow: Overflow.visible,
                alignment: Alignment.topRight,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFE9E9E9),
                    ),
                  ),
                  Positioned(
                    top: -30.0,
                    right: 40.0,
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0XFF7BC9EC),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          print('hello');
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
