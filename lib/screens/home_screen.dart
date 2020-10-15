import 'package:flutter/material.dart';
import 'package:love_calculator_3/widgets/names_container.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'results_screen.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController name1 = TextEditingController();
  final TextEditingController name2 = TextEditingController();

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
        child: NamesContainer(
          name1: name1,
          name2: name2,
          onTap: () async {
            var url =
                'https://rapidapi.p.rapidapi.com/getPercentage?fname=${name1.text.trim()}&sname=${name2.text.trim()}';
            Map<String, String> headers = {
              'x-rapidapi-host': 'love-calculator.p.rapidapi.com',
              'x-rapidapi-key':
                  '4c18f5885bmsh1e7d3e79b072bc6p1ab2a4jsn3c7c75f09aea'
            };

            var response = await http.get(url, headers: headers);
            var jsonResponse = jsonDecode(response.body);

            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultsScreen(
                          percent: int.parse(jsonResponse['percentage']),
                          message: jsonResponse['result'],
                        )));
          },
        ),
      ),
    );
  }
}
