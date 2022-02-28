import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class telaEmail extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => telaEmailState();

}
class  telaEmailState extends State<telaEmail>{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        body: Container(
          child:Column(
            children: [
              Expanded(
                  child:ListView.builder(
                      itemBuilder: (context,index){

                       return Card(
                         margin: EdgeInsets.all(10),
                         child: ListTile(
                            title: Image.network("https://picsum.photos/seed/picsum/200/300",
                              fit:BoxFit.fitWidth),
                             subtitle:Text("Image $index") ,
                             focusColor: Colors.amber,
                             onTap: (){
                                print("nova tela $index");
                            },
                         ),
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