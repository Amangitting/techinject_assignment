import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class Item2 extends StatefulWidget {
  const Item2({super.key});

  @override
  State<Item2> createState() => _Item2State();
}

class _Item2State extends State<Item2> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 6,
            itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("user",style: TextStyle(fontSize: 20),),
                  SizedBox(height:10),
                  Container(width: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("tastyfood",style: TextStyle(
                        color: Colors.grey
                      ),),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all()),
                  )
                ],
              ),
              trailing: Container(margin: EdgeInsets.only(left: 10)
                ,
                child: RatingBar.builder(initialRating: 1,
                itemSize: 20,
                  itemBuilder: (context,o){
                  
                  return Icon(Icons.star,color: Colors.amber,);
                }, onRatingUpdate: (rating){
                  
                }),
              ),
            );
          })

;
  }
}