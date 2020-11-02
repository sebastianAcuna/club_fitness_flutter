import 'package:flutter/material.dart';


class UserDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:CustomScrollView(
        slivers: [
          _appbar(),
        ],
      )
      
       
      
    );
  }



  Widget _appbar(){

    return SliverAppBar(
      elevation: 2.0,
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Text('Nombre de usuario'),
          background: Hero(
            tag: 1,
                      child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS316qTwul1gW8pZ45UJ2WbhL5MuujJbfIuKg&usqp=CAU%22'),
                  fit: BoxFit.cover,
              ),
          ),
          )
         );
  }
}