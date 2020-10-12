import 'package:flutter/material.dart';
import 'package:love_calculator_3/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          'Love Calculator',
        ),
        elevation: 0.0,
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: FittedBox(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.amber[100],
            ),
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
            width: 300.0,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Name 1',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.red),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Name 2',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.red),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                CustomButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
