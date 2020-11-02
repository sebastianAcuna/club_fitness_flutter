import 'package:club_fitness/src/pages/user_detail.dart';
import 'package:club_fitness/src/search/user_search.dart';
import 'package:club_fitness/src/utils/painters/user_painter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: _appbar(context),
      body: Stack(
        children: [
          ClipPath(
            clipper: UserPainter(),
            child:  Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red.shade400, Colors.red.shade800],
                  begin: Alignment.bottomLeft, 
                  end: Alignment.topRight,
                )
              ),

            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: _listaUsuarios(context))
        ],
      )
    );
  }



Widget _appbar(BuildContext context){
  return AppBar(
    backgroundColor: Colors.red.shade800,
    elevation: 0.0,
    title: Text('Lista de usuarios',),
    centerTitle: true,
    actions: <Widget>[
      IconButton(
        icon:Icon(Icons.search, size: 30.0,), 
        onPressed:(){
          showSearch(context: context, delegate: UserSearch());
        },)
    ],
    // style: TextStyle(color: Colors.black)
  );
}

  Widget _listaUsuarios(BuildContext context){
    
    final List<List<String>> usuarios = 
    [
      ["Sebastian Acuna", "gym, amb", "Al dia"], 
      ["Jaime Flores", "gym, amb", "Dic: Pendiente"], 
      ["Ignacio Arriagada", "gym", "Al dia"]
    ];

    print("Usuarios length ${ usuarios.length } ");


    return Container(
      decoration: new BoxDecoration(
        boxShadow: [
          BoxShadow(offset: Offset(3, 3), blurRadius: 15.0, color:Color.fromRGBO(100, 100, 100, 0.5), spreadRadius:0.5)
        ]
      ),
      margin: EdgeInsets.all(20.0),
      child: ClipRRect(
        
        borderRadius: BorderRadius.circular(5.0),
        child: Container(
          padding: EdgeInsets.symmetric(vertical:15.0, horizontal: 5.0),
          color: Colors.white,
          child:  
                Column(
                  children: [
                    ListTile(
                          title: Text(usuarios[0][0]), 
                          subtitle: Text(usuarios[0][1]), 
                          leading: Hero( tag: 1, child: _imgUser()), 
                          trailing: Text(usuarios[0][2]),
                          onTap: () => Get.toNamed('user_detail')
                          
                        ),
                    ListTile(
                          title: Text(usuarios[0][0]), 
                          subtitle: Text(usuarios[0][1]), 
                          leading:_imgUser(), 
                          trailing: Text(usuarios[0][2]),
                        ),
                    ListTile(
                          title: Text(usuarios[0][0]), 
                          subtitle: Text(usuarios[0][1]), 
                          leading:_imgUser(), 
                          trailing: Text(usuarios[0][2]),
                        ),
                  ],
                ),
                
          
        ),
      ),
    );
  }


  Widget _imgUser(){
    return Container(
      width: 40.0, 
      height: 40.0, 
      decoration: BoxDecoration(
        shape: BoxShape.circle, 
        color: Colors.red, 
        image: new DecorationImage(
          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS316qTwul1gW8pZ45UJ2WbhL5MuujJbfIuKg&usqp=CAU%22'),
          fit: BoxFit.cover
            // fit: BoxFit.fill,  
        )
      )
    );
  }
  
}


