import "package:flutter/material.dart";
import 'package:project/desafioLogin2.dart';

void main(){
  runApp(MaterialApp(
    home: Login2(),
  ));
}

class LoginChallenge extends StatefulWidget {
  @override
  _LoginChallengeState createState() => _LoginChallengeState();
}

class _LoginChallengeState extends State<LoginChallenge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFf45d27),
                    Color(0xFFf5851f)
                  ]
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(95)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.4),
                    blurRadius: 2.0,
                    offset: Offset(0.0, 3.0),
                  )
                ],
              ),
              child: Column(          
                mainAxisAlignment: MainAxisAlignment.center,      
                children: <Widget>[
                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: 
                      Icon(Icons.games, 
                      size: 100,
                      color: Colors.white,),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 32,
                        bottom: 32
                      ),
                      child: Text("App dos sonhos!",
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                          ),
                        ),
                    )
                  ),
                ],
              ),
            ),
            //End of First orange bloc
            //InputText Email
            Container(
              padding: EdgeInsets.only(top: 80),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/1.3,
                    height: 50,
                    padding: EdgeInsets.only(
                      top: 5, bottom: 5, left: 16, right: 16
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50)
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.5),
                          blurRadius: 15.0,                          
                        )
                      ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.email,
                        color: Colors.grey),
                        hintText: "Email",
                        border: InputBorder.none
                      ),
                    ),
                  )
                ],
              ),
            ),
            //InputText Password
            Container(
              padding: EdgeInsets.only(top: 32),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/1.3,
                    height: 50,
                    padding: EdgeInsets.only(
                      top: 5, bottom: 5, left: 16, right: 16
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50)
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.5),
                          blurRadius: 15.0,                          
                        )
                      ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.vpn_key,
                        color: Colors.grey),
                        hintText: "Password",
                        border: InputBorder.none
                      ),
                      obscureText: true,
                    ),
                  )
                ],
              ),
            ),
            //End of password field
            //Begin of Forgot password link
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(
                 right: 47
                ),
                child:FlatButton(
                  onPressed: (){},
                  highlightColor: Colors.transparent,
                  splashColor: Colors.orangeAccent.withOpacity(.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child:  Ink(
                    child: Text("Forgot Password ?",
                    style: TextStyle(
                    color: Colors.grey
                    ),
                  ),
                  )
                )
              ),
            ),
            //End of Forgot password link
            //Begin of Login button
            Container(
              margin: EdgeInsets.only(top: 64),
              height: 50,
              width: MediaQuery.of(context).size.width/1.3,
              child: RaisedButton(
                onPressed: (){},
                splashColor: Colors.orangeAccent.withOpacity(.5),
                highlightColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                      colors: [                    
                        Color(0xFFf5851f),
                        Color(0xFFf45d27)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width/1.3, maxHeight: 50),
                      alignment: Alignment.center,
                      child: Text("Login".toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //End of Login Button
              //Begin of fokus Design
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text("Fokus Design",
                  style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              )
              //End of fokus design
          ],
        ),
      ),
    );      
  }
}