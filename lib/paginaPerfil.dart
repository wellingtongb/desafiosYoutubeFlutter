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
  final double icones = 20;
  final double textIcones = 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(       
        elevation: 0, 
        backgroundColor: green,
        centerTitle: true,
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
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(   //Coluna da Familiar
                      children: <Widget>[
                        Text("Familiar", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        ),),
                        Text("12", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                    Container(    //Foto central
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        image: new DecorationImage(
                          fit: BoxFit.cover,
                         image: new AssetImage("images/dartPerfil.jpg")
                        )
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text("Following", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        ),),
                        Text("18", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    )
                  ],
                ),
                //Fim da Row com Imagem
                //Texto ID usuário
                Padding(
                  padding: const EdgeInsets.only(top: 32.0, right: 17),
                  child: Text("ID 668754", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 15
                  ),),
                ),
                // Inicio texto Nome do usuário
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("Dart Vader da Silva", style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                //inicio da ROW dos icones
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //Icone 1 friends
                      Column(
                        children: <Widget>[
                          Icon(
                            Icons.people_outline,
                            color: Colors.white,
                            size: 35),
                            Text("Friends", style: TextStyle(
                              color: Colors.white,
                            ),)
                        ],
                      ),
                      //Icone 2 Schedule
                      Column(
                        children: <Widget>[
                          Icon(
                            Icons.schedule,
                            color: Colors.white,
                            size: 35),
                            Text("Schedule", style: TextStyle(
                              color: Colors.white,
                            ),)
                        ],
                      ),
                      //Icone 3 video
                      Column(
                        children: <Widget>[
                          Icon(
                            Icons.ondemand_video,
                            color: Colors.white,
                            size: 35),
                            Text("Video", style: TextStyle(
                              color: Colors.white,
                            ),)
                        ],
                      ),
                      //Icone 4 Likes
                      Column(
                        children: <Widget>[
                          Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 35),
                            Text("Likes", style: TextStyle(
                              color: Colors.white,
                            ),)
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          //FIm do container verde principal
          Container(
            width: MediaQuery.of(context).size.width,
            height: 253,
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(                  
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(children: <Widget>[
                      Icon(
                        Icons.insert_chart,
                        color: green,
                        size: 50,
                      ),
                      Text("Leaders", style: TextStyle(
                        color: green,
                        fontSize: textIcones
                      ),)
                    ],
                    ),

                    Column(children: <Widget>[
                     Icon(
                        Icons.trending_up,
                        color: green,
                        size: 50,
                      ),
                      Text("Level Up", style: TextStyle(
                        color: green,
                        fontSize: textIcones
                      ),)
                    ],
                    ),

                    Column(children: <Widget>[
                      Icon(
                        Icons.card_giftcard,
                        color: green,
                        size: 50,
                      ),
                      Text("Gifts", style: TextStyle(
                        color: green,
                        fontSize: textIcones
                      ),)
                    ],
                    )
                  ],
                ),
                //Fim da linha 1 do container branco
                //Incio da linha 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(children: <Widget>[
                      Icon(
                        Icons.blur_on,
                        color: green,
                        size: 50,
                      ),
                      Text("QR Code", style: TextStyle(
                        color: green,
                        fontSize: textIcones
                      ),)
                    ],
                    ),

                    Column(children: <Widget>[
                     Icon(
                        Icons.watch_later,
                        color: green,
                        size: 50,
                      ),
                      Text("Daily bonus", style: TextStyle(
                        color: green,
                        fontSize: textIcones
                      ),)
                    ],
                    ),

                    Column(children: <Widget>[
                      IconButton(
                         onPressed: (){},
                         highlightColor: Colors.white,
                        icon: Icon(Icons.nature_people),
                        color: green,
                        iconSize: 50,
                      ),
                      Text("Visitors", style: TextStyle(
                        color: green,
                        fontSize: textIcones
                      ),)
                    ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}