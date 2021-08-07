import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class giris_ekrani extends StatefulWidget {
  const giris_ekrani({Key key}) : super(key: key);

  @override
  _giris_ekraniState createState() => _giris_ekraniState();
}

class _giris_ekraniState extends State<giris_ekrani> {
  bool beni_hatirla = false;
  Widget _emailgiris(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "E-mail",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0,),
        Container(
            color: Colors.white,
            alignment: Alignment.centerLeft,
            height: 60.0,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 15.0),
                prefixIcon: Icon(Icons.email,
                    color: Colors.blue),
                hintText: "Mailinizi giriniz",
                hintStyle: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                )
              ),
            ),
        ),
      ],
    );
  }
  Widget _sifregiris(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Şifre",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0,),
        Container(
            color: Colors.white,
            alignment: Alignment.centerLeft,
            height: 60.0,
            child: TextField(
              obscureText: true,
              style: TextStyle(color: Colors.blue),
              decoration: InputDecoration(border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 15.0),
                prefixIcon: Icon(Icons.lock,
                    color: Colors.blue),
                hintText: "Şifrenizi giriniz",
                hintStyle: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                )
              ),
            )

        )
      ],
    );
  }
  Widget _sifreunuttum() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print("Şifremi Unuttum seçeneği aktif"),
        //padding: EdgeInsets.only(right: 0.0),
        child: Text(
          "Şifremi Unuttum?",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
  Widget _benihatirla(){
    return Container(
      height: 20.0,
      child: Row(
        children: [
          Theme(data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: beni_hatirla,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value){
                setState(() {
                  beni_hatirla = value;
                });
              },
            ),
          ),
          Text("Beni hatırla",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),),
        ],
      ),
    );
  }
  Widget _giris_yap(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      width: double.infinity,
      child: ElevatedButton.icon(
        icon: Icon(
          Icons.accessibility,
          color: Colors.blue,
          size: 24.0,
        ),
        label: Text('GİRİŞ YAP',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontFamily: "Open Sans",
            letterSpacing: 1.5,
            fontSize: 18.0,
          ),
        ),
        onPressed: () {
          print('Giriş Yapıldı');
        },
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.white12,
          primary: Colors.white,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue,
                  Colors.blueAccent,
                  Colors.lightBlue,
                  Colors.lightBlueAccent,
                ]
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding : EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 120.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Giriş Yap",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  _emailgiris(),
                  SizedBox(height: 30.0),
                  _sifregiris(),
                  _sifreunuttum(),
                  _benihatirla(),
                  _giris_yap(),
                ]
              ),
            ),
          ),
        ]
      ),
    );
  }
}
