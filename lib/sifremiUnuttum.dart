import 'package:flutter/material.dart';

class sifremiUnuttum extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<sifremiUnuttum> {
  String userEmail;

  final _degerKey = GlobalKey<FormState>();

  get white => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Form(
          key: _degerKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.account_circle,
                size: 150.0,
                color: Color.fromRGBO(27, 108, 204, 0.9),
              ),
              Text("Şifre Sıfırlama",
                  style: TextStyle(
                    fontSize: 34,
                    fontFamily: "Times New Roman",
                  )),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color.fromRGBO(27, 108, 204, 0.9),
                  ),
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  filled: true,
                ),
                onSaved: (value) {
                  userEmail = value;
                },
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                mouseCursor: MaterialStateMouseCursor.clickable,
                padding: EdgeInsets.all(10),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Text(
                  "Gönder",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                  _degerKey.currentState.save();
                  debugPrint(
                      "$userEmail  email adresine şifre sıfırlama gönderildi.");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
