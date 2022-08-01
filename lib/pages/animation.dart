// ignore_for_file: prefer_const_constructors

import 'package:day_8/details.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  double _height = 100.0;
  double _width = 200.0;
  var _color = Colors.black87;
  double _fontSize = 20.0;
  double _right = 0;
  double _opacity = 1;

  void animatadContainer() {
    setState(() {
      _height = 200.0;
      _width = 300.0;
      _color = Colors.deepOrange;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              Lottie.network(
                  'https://assets10.lottiefiles.com/packages/lf20_w9bdffcb.json'),
              SizedBox(height: 15.0),
              Container(
                height: 250.0,
                width: 300.0,
                child: Lottie.asset('assets/no_internet.json'),
              ),

              //Lottie.asset("assets/110304-popeye.zip"),
              SizedBox(height: 15.0),
              AnimatedContainer(
                duration: Duration(seconds: 2),
                curve: Curves.bounceIn,
                height: _height,
                width: _width,
                decoration: BoxDecoration(
                    color: _color, borderRadius: BorderRadius.circular(20.0)),
                onEnd: () {
                  setState(
                    () {
                      _width = _width == 200 ? 300 : 200;
                      _color = _color == Colors.black
                          ? Colors.orangeAccent
                          : Colors.amberAccent;
                    },
                  );
                },
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _height = 200;
                    _width = 250;
                    _color = Colors.orangeAccent;
                  });
                },
                child: Text("Animated"),
              ),
              SizedBox(height: 10.0),
              AnimatedDefaultTextStyle(
                child: Text(
                  "Hello, I'm Sadman. We are Learing Animated Default Text Style.",
                ),
                style: TextStyle(
                  fontSize: _fontSize,
                  color: Colors.black,
                ),
                duration: Duration(seconds: 2),
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _fontSize = 40;
                    });
                  },
                  child: Text("Animated")),
              SizedBox(height: 10.0),
              Container(
                height: 100.0,
                width: 400.0,
                color: Colors.green,
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      right: _right,
                      child: Padding(
                        padding: EdgeInsets.only(top: 25.5),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _right = 272.0;
                            });
                          },
                          child: Text("Animated"),
                        ),
                      ),
                      duration: Duration(seconds: 5),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              AnimatedOpacity(
                duration: Duration(seconds: 2),
                opacity: _opacity,
                child: Card(
                  child: ListTile(
                    title: Text("My List tile"),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _opacity = 2.0;
                  });
                },
                child: Text("Animate"),
              ),
              SizedBox(height: 15.0),

              Card(
                elevation: 5,
                child: ListTile(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => DetailsScreen()),
                  ),
                  leading:
                      Hero(tag: '1', child: Image.asset("assets/image1.jpg")),
                  title: Text("Image"),
                ),
              ),

              //   Lottie.asset("lottie_file_1.json"),
            ],
          ),
        ),
      ),
    );
  }
}
