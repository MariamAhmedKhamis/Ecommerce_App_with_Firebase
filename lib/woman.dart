import 'package:flutter/material.dart';

class Woman extends StatelessWidget {
  @override
  List<Map> Person = [
    {
      'url': 'assets/images/woman1.jpg',
      'name': 'blouse',
    },
    {
      'url': 'assets/images/woman2.jpg',
      'name': 'blouse',
    },
    {
      'url': 'assets/images/w3.jpg',
      'name': 'blouse',
    },
    {
      'url': 'assets/images/w4.jpg',
      'name': 'blouse',
    },
    {
      'url': 'assets/images/w10.jpg',
      'name': 'blouse',
    },
    {
      'url': 'assets/images/w11.jpg',
      'name': 'blouse',
    },
    {
      'url': 'assets/images/w8.jpg',
      'name': 'blouse',
    },
    {
      'url': 'assets/images/w9.jpg',
      'name': 'blouse',
    },
    {
      'url': 'assets/images/w12.jpg',
      'name': 'blouse',
    },
    {
      'url': 'assets/images/w13.jpg',
      'name': 'blouse',
    },
  ];

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.count(
        crossAxisCount: 2, // Set the number of columns to 2
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
