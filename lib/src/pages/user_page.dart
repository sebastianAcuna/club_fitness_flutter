import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: SafeArea(child: _listaUsuarios(),),
      
    );
  }



Widget _appbar(){
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0.0,
    title: Text('Lista de usuarios', style: TextStyle(color: Colors.black),)

  );
}

  Widget _listaUsuarios(){

    return Column(
      children:<Widget>[
        ListTile(
          title: Text('Sebastian Acuña'), 
          subtitle: Text('Gym, Amb'), 
          leading:Image(image: NetworkImage('https://img.etimg.com/thumb/msid-69037337,width-300,imgsize-144736,,resizemode-4,quality-100/oldrich-muller.jpg'),), 
          trailing: Text('Al dia'),
        ),
        ListTile(title: Text('Jaime Flores'), subtitle: Text('Gym, Amb'), leading:Icon(Icons.person_pin), trailing: Text('Dic: Pendiente'),)
      ]
        
    );
  }
}