import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:club_fitness/src/pages/config_page.dart';
import 'package:club_fitness/src/pages/home_page.dart';
import 'package:club_fitness/src/pages/user_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TabController _controller = TabController();

    return GetBuilder(
      init: _controller,
      builder: (_)=> Scaffold(
        body: _Paginas(),
        bottomNavigationBar: _Navegacion(),
      )
      
    );
  }
}



class _Navegacion extends StatelessWidget {

  final colores  = [];


  @override
  Widget build(BuildContext context) {
    return GetBuilder<TabController>(

      builder: (_) => BottomNavyBar(
        selectedIndex: _.paginaActual,
        containerHeight: 55.0,
        iconSize: 32.5,
        showElevation: false,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        items: _bottomMenuItem(),
        onItemSelected: (int index) => _.paginaActual = index,
      ),
      
    );
  }
}

List<BottomNavyBarItem> _bottomMenuItem(){


  List<Color> _inactive = [Colors.black, Colors.red];

  return [
    BottomNavyBarItem(
      icon: Icon(Icons.home), 
      title: Text('Inicio'),
      inactiveColor: _inactive[0],
      activeColor: _inactive[1],
      textAlign: TextAlign.center),

    BottomNavyBarItem(
      icon: Icon(Icons.account_circle), 
      title: Text('Usuarios'),
      inactiveColor: _inactive[0],
      activeColor: _inactive[1],
      textAlign: TextAlign.center),
      
    BottomNavyBarItem(
      icon: Icon(Icons.settings), 
      title: Text('Settings'),
      inactiveColor: _inactive[0],
      textAlign: TextAlign.center,
      activeColor: _inactive[1]),

  ];
}


class _Paginas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TabController>(
      builder: (_) => PageView(
        controller: _.pageController,
        physics: BouncingScrollPhysics(),
        onPageChanged: (i) => _.paginaActual = i,
        children: [
          HomePage(),
          UserPage(),
          ConfigPage()
          
        ],
      ),
      
    );
  }
}


class TabController extends GetxController{

  PageController _pageController = PageController(initialPage: 0);

  @override
  void onInit() {
    super.onInit();
    print("Instancia");
  }


  int _paginaActual = 0;

  int get paginaActual => this._paginaActual;

  set paginaActual(int pagina){
    this._paginaActual = pagina;
    _pageController.animateToPage(pagina, 
      duration: Duration(milliseconds: 150),
      curve: Curves.easeIn);

    update();

  } 


PageController get pageController => this._pageController;
  

}