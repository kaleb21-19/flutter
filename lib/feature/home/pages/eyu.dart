import 'package:flutter/material.dart';

class Eyu extends StatelessWidget {
  const Eyu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Image.network('https://picsum.photos/200/300'),
                Text('Eyup'),
              ],
            ),
          );
        },
      ),
    );
  }
}
