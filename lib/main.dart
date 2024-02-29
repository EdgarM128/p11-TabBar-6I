import 'package:flutter/material.dart';

void main() => runApp(AppMiTabBar());

class AppMiTabBar extends StatelessWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar Edgar Meraz",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MiPaginaInicial(),
    );
  }
} //fin de AppMiTapBar

//statefull
class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
} //MiPaginaInicial

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar Edgar Emilio"),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              text: "Juegos",
              icon: Icon(Icons.games),
            ),
            Tab(
              text: "Amigos",
              icon: Icon(Icons.account_box),
            ),
            Tab(
              text: "Tienda",
              icon: Icon(Icons.shop),
            ),
            Tab(
              text: "Envios",
              icon: Icon(Icons.send),
            ),
          ] //fin de tab
              ), //Fin Bottom TabBar
        ),
        body: TabBarView(children: const <Widget>[
          Center(
            child: Text(
              "Bloodborne",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Center(
            child: Text(
              "Pepito68",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Center(
            child: Text(
              "Local 04 en Calle Uva",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Center(
            child: Text(
              "Ciudad de mexico, Av. Justicia 3433",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
        ] //Jardin de niños
            ), //fin de TabBarView
      ), //fin de scafold
    );
  } //fin widget
} //MiPaginaInicialState
