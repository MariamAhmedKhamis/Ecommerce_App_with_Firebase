import 'package:flutter/material.dart';
import 'kids.dart';
import 'men.dart';
import 'shoes.dart';
import 'woman.dart';

class Clothes extends StatelessWidget {
  @override

  Widget build(BuildContext context)
  {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Categries'),
            backgroundColor: Color(0xFFFF7643),
            bottom: TabBar(
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Woman',
                  icon: Icon(Icons.pregnant_woman),
                ),
                Tab(
                  text: 'Men',
                  icon: Icon(Icons.person),
                ),
                Tab(
                  text: 'Shoes',
                  icon: Icon(Icons.luggage),
                ),
                Tab(
                  text: 'Electrons',
                  icon: Icon(Icons.eighteen_mp),
                ),


              ],
            ),
          ),
          body: TabBarView(
            children: [
              Woman(),
              Men(),
              Shoes(),
              Kids(),
            ],
          ),
        ));
  }
}
