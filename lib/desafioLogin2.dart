import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

class Login2 extends StatefulWidget {
  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]); //função pra iniciar o app sem a barra de informações superior
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite, //definindo a maior largura possivel da tela
        height: double.maxFinite,
        child: Stack(     //Stack é util para poder sobrepor um widget em outro
          children: <Widget>[
            Image.asset(
              "images/cntower2.jpg",
              width: double.maxFinite,
              height: 275,
            ),
            //fim da imagem do top
            //Inicio do texto Signin
            Positioned(
              top: 175,
              left: 300,
              child: Text("Sign In",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),),
            ),
            //Inicio container principal botoes
            Positioned(
              top: 225,
                child: Container(  
                padding: EdgeInsets.all(32),              
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)
                  )
                ),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        //border: InputBorder.none,
                        icon: Icon(Icons.person_pin   ,
                        color: Colors.grey)
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          //border: InputBorder.none,
                          icon: Icon(Icons.vpn_key,
                          color: Colors.grey,)
                        ),
                        obscureText: true,
                      ),
                    ),
                    //inicio do botao
                    Container(   
                      margin: EdgeInsets.only(top: 64),                   
                      width: double.maxFinite,
                      height: 50,
                      child: RaisedButton(
                        onPressed: (){},
                        highlightColor: Colors.transparent,
                        splashColor: Colors.white.withOpacity(.3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFfff4c3),
                                Color(0xFF7cafde)
                              ]
                            ),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Container(
                            constraints: BoxConstraints(maxHeight: 50, maxWidth: double.maxFinite),
                            alignment: Alignment.center,
                            child: Text("Login".toUpperCase(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),),
                          ),
                        ),
                      ),
                    ),
                    //Fim botão de login
                    //Inicio link Forgot password
                    FlatButton(
                      onPressed: (){},
                      highlightColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Ink(
                        child: Text("Forgot Passwaord ?",
                        style: TextStyle(
                          color: Colors.grey
                        ),),
                      ),
                    ),
                    //fim Forgot password
                    Container(height: 50,),
                    //Inicio linha para os botões
                    Row(                      
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          child: RaisedButton(
                            onPressed: (){},
                            highlightColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(50.0)
                            ),
                            color: Colors.grey[200],
                            child: Ink(
                              child: Icon(Icons.face,
                              color: Colors.grey,),
                            ),
                          ),
                        ),

                        Container( width: 50,),

                        Container(
                          height: 60,
                          width: 60,
                          child: RaisedButton(
                            onPressed: (){},
                            highlightColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(50.0)
                            ),
                            color: Colors.grey[200],
                            child: Ink(
                              child: Icon(Icons.fingerprint,
                              color: Colors.grey,),
                            ),
                          ),
                        )
                      ],
                    ),
                    //Texto da fokus
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text("Fokus Design",
                      style: TextStyle(
                        color: Colors.grey
                      ),),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}