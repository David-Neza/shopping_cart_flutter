import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/controllers/counterController.dart';

class OtherScreen extends StatelessWidget {
  final CounterController _counterContoller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Screen was clicked ${_counterContoller.counter} times"),
        SizedBox(height: 10),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Open other Screen"))
      ]),
    );
  }
}
