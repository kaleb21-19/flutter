import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return const Card(
              child: Column(
                children: [Text("Card"), Text("Card"), Text("Card")],
              ),
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
