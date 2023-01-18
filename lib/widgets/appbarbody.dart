import 'package:flutter/material.dart';

class Appbarbody extends StatelessWidget {
  const Appbarbody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
                    expandedHeight: 200,
                    floating: true,
                    backgroundColor: Colors.white,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                opacity: .8,
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://cdn.britannica.com/98/235798-050-3C3BA15D/Hamburger-and-french-fries-paper-box.jpg",
                                    scale: .5))),
                        height: 200,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Chick chick",
                                        style: TextStyle(
                                            fontSize: 30, color: Colors.white),
                                      ),
                                      Text(
                                        "jalandhar",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "open hours",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  child: Container(
                                    decoration:
                                        BoxDecoration(border: Border.all()),
                                    child: Image.network(
                                      'https://cdn.cnn.com/cnnnext/dam/assets/140430115517-06-comfort-foods.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                    height: 140,
                                    width: 140,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    bottom: TabBar(
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: Colors.red,
                        tabs: [
                          Tab(
                            icon: Text(
                              "Menu",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          Tab(
                            icon: Text(
                              "Review",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ]),
                  );
  }
}