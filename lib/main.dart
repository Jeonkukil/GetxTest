import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest/controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Controller controller = Get.put(Controller());

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Getx'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<Controller>(
                init: Controller(),
                builder: (_) => Text('Current value is : ${Get.find<Controller>().x}',
                style: TextStyle(fontSize: 20, color: Colors.redAccent),),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.find<Controller>().increment();
                },
                child: Text('Add Number'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
