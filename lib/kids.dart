import 'package:flutter/material.dart';
class Kids extends StatelessWidget {
  @override
  List<Map> Person = [
    {
      'url': 'assets/images/cam1.jpg',
      'name': 'Canon EOS',
    },
    {
      'url': 'assets/images/cam2.jpg',
      'name': 'Panasonic',
    },
    {
      'url': 'assets/images/cam3.jpg',
      'name': 'Sony Alpha',
    },
    {
      'url': 'assets/images/er1.jpg',
      'name': 'headfone',
    },
    {
      'url': 'assets/images/er2.jpg',
      'name': 'headfone',
    },
    {
      'url': 'assets/images/cav2.jpg',
      'name': 'caver',
    },
    {
      'url': 'assets/images/cav4.jpg',
      'name': 'caver',
    },
    {
      'url': 'assets/images/cav1.jpg',
      'name': 'caver',
    },
    {
      'url': 'assets/images/char2.jpg',
      'name': 'charger',
    },
    {
      'url': 'assets/images/char1.jpg',
      'name': 'charger',
    },
  ];

  Widget build(BuildContext context) {
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
