import 'package:flutter/material.dart';

void main() => runApp(PaginaPerfil());

/* class PaginaPerfil extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
} */

class PaginaPerfil extends StatefulWidget {
  @override
  _PaginaPerfilState createState() => _PaginaPerfilState();
}

class _PaginaPerfilState extends State<PaginaPerfil> {

  final Color green = Color(0xFF1E8161);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(       
        elevation: 0, 
        backgroundColor: green,
        title: Text("Profile", 
          style: TextStyle(
            color: Colors.white
          ),),
          leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.arrow_back_ios)
          ),
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.search),
            )
          ],
      ),
      //Final app bar
      //Corpo do app será divido em 2 pedaços - 1 parte superior verde, 2 parte inferior branca
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 350,
            decoration: BoxDecoration(
              color: green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)
              )
            ),
          )
        ],
      ),
    );
  }
}