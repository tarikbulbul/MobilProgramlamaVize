import 'package:flutter/material.dart';

void main() {
  runApp(login());
}

class login extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<login> {
  String userName;
  String password;

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
              Text("Giriş",
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
                    Icons.person,
                    color: Color.fromRGBO(27, 108, 204, 0.9),
                  ),
                  labelText: "Kullanıcı Adı",
                  border: OutlineInputBorder(),
                  filled: true,
                ),
                onSaved: (value) {
                  userName = value;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color.fromRGBO(27, 108, 204, 0.9),
                  ),
                  labelText: "Şifre",
                  border: OutlineInputBorder(),
                  filled: true,
                ),
                onSaved: (value) {
                  password = value;
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    child: Text(
                      "Üye Ol",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/uyeOl");
                    },
                  ),
                  MaterialButton(
                    child: Text(
                      "Şifremi Unuttum",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/sifremiUnuttum");
                    },
                  ),
                ],
              ),
              RaisedButton(
                mouseCursor: MaterialStateMouseCursor.clickable,
                padding: EdgeInsets.all(10),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Text(
                  "Giriş",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  _degerKey.currentState.save();
                  if (userName == "" && password == "") {
                    debugPrint("Lütfen Kullanıcı Adı ve Şifre Giriniz");
                  } else {
                    if (userName == "demo" && password == "demo") {
                      debugPrint("Giriş Başarılı");
                      Navigator.pushNamed(context, "/anaSayfa");
                    } else {
                      debugPrint("Kullanıcı adı ya da Şifre hatalı");
                    }
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
