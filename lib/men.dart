import 'package:flutter/material.dart';

class Men extends StatelessWidget {
  @override

  List<Map> Person = [
    {
      'url': 'assets/images/man1.jpg',
      'name': 'Shirt',
    },
    {
      'url': 'assets/images/man2.jpg',
      'name': 'T-Shirt',
    },
    {
      'url': 'assets/images/m1.jpg',
      'name': 'T-Shirt',
    },
    {
      'url': 'assets/images/m2.jpg',
      'name': 'T-Shirt',
    },
    {
      'url': 'assets/images/m3.jpg',
      'name': 'T-Shirt',
    },
    {
      'url': 'assets/images/m4.jpg',
      'name': 'T-Shirt',
    },
    {
      'url': 'assets/images/m5.jpg',
      'name': 'T-Shirt',
    },
    {
      'url': 'assets/images/m6.jpg',
      'name': 'T-Shirt',
    },
    {
      'url': 'assets/images/man2.jpg',
      'name': 'T-Shirt',
    },
    {
      'url': 'assets/images/man1.jpg',
      'name': 'T-Shirt',
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
