import 'package:flutter/material.dart';

class uyeOl extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<uyeOl> {
  String userEmail;
  String password;
  String passwordagain;

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
                size: 100.0,
                color: Color.fromRGBO(27, 108, 204, 0.9),
              ),
              Text("Üye Ol",
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
                onSaved: (value) {},
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
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color.fromRGBO(27, 108, 204, 0.9),
                  ),
                  labelText: "Şifre Tekrar",
                  border: OutlineInputBorder(),
                  filled: true,
                ),
                onSaved: (value) {
                  passwordagain = value;
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    padding: EdgeInsets.all(10),
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      "Vazgeç",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(10),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Text(
                      "Kaydol",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      _degerKey.currentState.save();
                      if (password != passwordagain) {
                        debugPrint("Şifreniz birbiriyle uyuşmuyor!");
                      } else {
                        debugPrint(
                            "Kayıt Bilgileriniz: Email: $userEmail , Şifreniz: $password ");
                        Navigator.pushNamed(context, "/login");
                      }
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
