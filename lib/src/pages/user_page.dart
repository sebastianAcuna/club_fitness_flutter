import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: _appbar(),
      body: Stack(
        children: [
          ClipPath(
            clipper: MyPainter(),
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
            child: _listaUsuarios(context) ,)
          
        ],
      )
      
     
      
     
      
    );
  }



Widget _appbar(){
  return AppBar(
    backgroundColor: Colors.red.shade800,
    elevation: 0.0,
    title: Text('Lista de usuarios',)
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

    print(usuarios.length);


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
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: usuarios.length,
            itemBuilder:(context, index) => 
                ListTile(
                  title: Text('Sebastian Acuña'), 
                  subtitle: Text('Gym, Amb'), 
                  leading:_imgUser(), 
                  trailing: Text('Al dia'),
                ),
               
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




class MyPainter extends CustomClipper<Path>{



  @override
  Path getClip( Size size) {

      final height = size.height;
      final width = size.width;

      final rounded = 50.0;
      Path mainLine  = Path();



      mainLine.moveTo(0, 0);
      mainLine.lineTo(0,  height / 1.5);
      mainLine.lineTo((width / 2) - rounded , height / 2.5);
      // mainLine.quadraticBezierTo(width / 2, height / 2.5, 50 , height / 2.5);
      mainLine.lineTo(width,0);


      // mainLine.lineTo(0, height / 4);
      // mainLine.lineTo(width / 2, height );
      
      // mainLine.lineTo(width * 0.5,  height * 0.25);
      // mainLine.lineTo(width,  0);


      // mainLine.lineTo(width, 0);




      // 

      // mainLine.lineTo(0, height / 2);
      // mainLine.lineTo(width, height / 2);
      // mainLine.lineTo(width, 0);
      // mainLine.lineTo(width / 1, height / 1);


      // mainLine.quadraticBezierTo(width, 0 / 2, 50, 0); 
      // mainLine.quadraticBezierTo(width, height, width , height);


      // mainLine.addOval(oval)

      // paint.color = Colors.blue.shade600;
      return mainLine;
      // canvas.drawPath(mainLine, paint);

    }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
   return true;
  }
  
}