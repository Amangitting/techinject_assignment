import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavigationbar extends StatelessWidget {
  const CustomNavigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return 
  Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Row(children: [
          CircleAvatar(
            radius: 30,
            child: Text("Menu"),
            
          ),
          SizedBox(width: 20,),
          InkWell(
            onTap: () {
              debugPrint("added");

            },
            child: Container(
              alignment:Alignment.center ,
              height: 50,
              width: MediaQuery.of(context).size.width-100,
              color: Colors.red,
              child: Text("Total Items"),
          
              
            ),
          )
        ],),
  );
}}