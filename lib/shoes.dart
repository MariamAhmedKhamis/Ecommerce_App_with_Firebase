import 'package:flutter/material.dart';

class Shoes extends StatelessWidget {
  @override
  List<Map> Person = [
    {
      'url': 'assets/images/s1.jpg',
      'name': 'Heels',
    },
    {
      'url': 'assets/images/s2.jpg',
      'name': 'Heels',
    },
    {
      'url': 'assets/images/s3.jpg',
      'name': 'Heels',
    },
    {
      'url': 'assets/images/s4.jpg',
      'name': 'Heels',
    },
    {
      'url': 'assets/images/s5.jpg',
      'name': 'Heels',
    },
    {
      'url': 'assets/images/s6.jpg',
      'name': 'Heels',
    },
    {
      'url': 'assets/images/s7.jpg',
      'name': 'Heels',
    },
    {
      'url': 'assets/images/s8.jpg',
      'name': 'Heels',
    },
    {
      'url': 'assets/images/s9.jpg',
      'name': 'Heels',
    },
    {
      'url': 'assets/images/s1.jpg',
      'name': 'Heels',
    },

  ];

  Widget build(BuildContext context)
  {
    return Container(
      color: Colors.white,
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          for (int i = 0; i < Person.length; i++)
            Card(
              color: Colors.orange.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              shadowColor: Colors.green,
              elevation: 40,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(Person[i]['url']),
                    ),
                    SizedBox(height: 10),
                    Text(Person[i]['name']),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
