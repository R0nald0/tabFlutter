import 'package:flutter/material.dart';
import 'package:tabapp/views/telaEmail.dart';
import 'package:tabapp/views/telaHome.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomeState();

}
class HomeState  extends State<Home> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    super.initState();

     _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
         appBar: AppBar(
           title: Text("Tabbar"),
           bottom: TabBar(
              controller: _tabController,
              tabs: <Widget>[
                   Tab(
                      text: "Home",
                     icon: Icon(Icons.home),
                   ),
                   Tab(
                      icon: Icon(Icons.email),
                     text: "Email",
                   ),
                  Tab(
                    text: "User",
                    icon: Icon(Icons.account_circle_rounded),
                  )
              ],
           ),
         ),

       body:TabBarView(
         controller: _tabController,
         children: <Widget>[
           telaHome(),
            telaEmail(),
           Text("pagina 3")
         ],
       )
     );
  }
}