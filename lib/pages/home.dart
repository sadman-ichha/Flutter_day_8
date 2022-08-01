import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "app_name".tr,
              style: TextStyle(fontSize: 40.0),
            ),
            Text(
              "app_title".tr,
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(
              height: 40.0,
            ),
            ElevatedButton(
              onPressed: () {
                Get.updateLocale(Locale("en", "US"));
              },
              child: Text("English"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.updateLocale(Locale("bn", "BD"));
              },
              child: Text("Bangla"),
            ),
          ],
        ),
      ),
    );
  }
}
