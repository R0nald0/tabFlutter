import 'package:flutter/material.dart';

class telaHome extends StatefulWidget{
  @override
State<StatefulWidget> createState() => telaHomeState();
}
class telaHomeState extends State<telaHome>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         child: Column(
           children: <Widget>[
               Expanded(
                   child: ListView.builder(

                       itemBuilder: (contex ,index){

                         return ListTile(
                           title: Text("Lista $index"),
                         );
                       }
                   )
               )
           ],
         ),
       ),
    );
  }

}