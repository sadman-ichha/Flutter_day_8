import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 35.0),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 4 / 2,
                child: Container(
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 15.0),
              FittedBox(
                fit: BoxFit.cover,
                child: Row(
                  children: [
                    Container(
                      height: 200.0,
                      width: 200.0,
                      color: Colors.amberAccent,
                    ),
                    Container(
                      height: 200.0,
                      width: 200.0,
                      color: Colors.black,
                    ),
                    Container(
                      height: 200.0,
                      width: 200.0,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                height: 300.0,
                width: 350.0,
                color: Colors.deepOrange,
                child: FractionallySizedBox(
                  widthFactor: 0.7,
                  heightFactor: 0.5,
                  child: Container(
                    color: Colors.indigo,
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width / 3,
                color: Colors.green,
              ),
              SizedBox(height: 15.0),
              OrientationBuilder(
                builder: (_, orientation) {
                  if (orientation == Orientation.portrait) {
                    return Center(child: Text('Portrait'));
                  } else {
                    return Center(child: Text('Landscape'));
                  }
                },
              ),
              SizedBox(height: 15.0),
              Container(
                height: 200.0.h,
                width: 200.0.w,
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.all(Radius.circular(20.0.r)),
                ),
              ),
              Text(
                "Hello, I'm Sadman,",
                style: TextStyle(
                  fontSize: 40.0.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
