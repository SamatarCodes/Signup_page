import 'package:flutter/material.dart';
import 'constants.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
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
              Expanded(
                child: Row(
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
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    TextField(
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black.withOpacity(.30),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 7.0),
                        hintText: "Email address",
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 7.0),
                        hintText: "Password",
                      ),
                    ),
                  ],
                ),
              ),
//              Spacer(),
//              Spacer(),
//              Spacer(),
//              Spacer(),
//              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
