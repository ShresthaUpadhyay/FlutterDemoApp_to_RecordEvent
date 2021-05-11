import 'package:flutter/material.dart';
import 'package:clevertap_plugin/clevertap_plugin.dart';
// import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Center(
            child: Text("HomePage"),
          ),
          backgroundColor: Colors.red),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            primary: Colors.white,
            onSurface: Colors.red,
            backgroundColor: Colors.red,
          ),
          onPressed: () {
            var eventData = {
              // Key:    Value
              'first': 'partridge',
              'second': 'turtledoves'
            };
            CleverTapPlugin.recordEvent("TestEvent", eventData);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Event Raised"),
            ));
          },
          child: Text('RaiseEvent'),
        ),
      ),
    );
  }
}
