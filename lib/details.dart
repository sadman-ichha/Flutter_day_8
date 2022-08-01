import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         Padding(
           padding: const EdgeInsets.only(top: 50.0),
           child: Column(
             children: [
               Hero(
                   tag: '1',
                   child: Image.asset("assets/image1.jpg")),
             ],
           ),
         ),
      );
  }
}
