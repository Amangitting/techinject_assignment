import 'package:flutter/material.dart';

class Item1 extends StatelessWidget {
  const Item1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 10,
            itemBuilder: (context,index){
              return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                alignment: AlignmentDirectional.topEnd,
                                
                                children: [
                                Container(
                                  height: 100,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    
                                    borderRadius: BorderRadius.circular(10),
                                    
                                  ),
                                  child: Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: 
                                      NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvxAJcSQRs2u2vkyS5GoKLm66Op0CqWt0rjg&usqp=CAU",))
                                    ),
                                    ),),
                                ),
                                Container(height: 20,
                                width: 20,
                                child: Center(child: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 5),),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.red),
                                    color: Colors.white,
                                    
                                  ),
                                  
                                )

                              ],),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("data",style: TextStyle(fontSize: 20),),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("data",style: TextStyle(fontSize: 10),),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: (){}, child: Text("Add to cart"))
                            ],
                          ),
                          color: Colors.white,
                          height: 80,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 80,
                        )
                      ],
                    );
            });
                    

  }
}