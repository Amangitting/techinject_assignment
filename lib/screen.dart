import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:flutter/material.dart';
import 'package:food_delievery/widgets/appbarbody.dart';
import 'package:food_delievery/widgets/bottomnavigation.dart';
import 'package:food_delievery/widgets/tabbaritem/item1.dart';
import 'package:food_delievery/widgets/tabbaritem/item2.dart';

class ZomatoScreen extends StatefulWidget {
  const ZomatoScreen({super.key});

  @override
  State<ZomatoScreen> createState() => _ZomatoScreenState();
}

class _ZomatoScreenState extends State<ZomatoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Chick chick")),
        bottomNavigationBar: CustomNavigationbar(),
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
              body: TabBarView(children: [Item1(), Item2()]),
              headerSliverBuilder: (context, o) {
                return [
                 Appbarbody()
                ];
              }),
        )

        //  CustomScrollView(
        //   slivers: [

        //     SliverToBoxAdapter(
        //       child: Container(height: 400,
        //       color:Colors.amber,)
        //     ),

        //     SliverToBoxAdapter(
        //       child: Container(height: 400,
        //       color:Colors.amber,)
        //     ),
        //     SliverToBoxAdapter(
        //       child: Container(height: 400,
        //       color:Colors.amber,)
        //     ),
        //     SliverToBoxAdapter(
        //       child: Container(height: 400,
        //       color:Colors.amber,)
        //     )
        //   ],
        // ),
        );
  }
}
