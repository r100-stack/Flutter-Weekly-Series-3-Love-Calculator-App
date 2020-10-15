import 'package:flutter/material.dart';
import 'package:love_calculator_3/widgets/names_container.dart';

import 'package:http/http.dart' as http;
// TODO (1): Import the dart:convert library

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
            // Now instead of printing the response, let's pass it to the results screen.
            // For doing that, we have to decode the response.
            // To do that, let's import another library, 'dart:convert'
            print(response.body);

            // TODO (2): Call the jsonDecode method of the dart:convert package
            // TODO (3): Pass the response.body as a parameter
            // TODO (4): Save the result in a variable called jsonResponse
            // We now have the jsonResponse parsed as a Map!
            // Isn't this much easier than having to manually parse it?

            // Now let's launch the results screen and pass the percent and message from jsonResponse
            // TODO (5): Call Navigator.push()
            // TODO (6): Pass the context variable as the first parameter
            // TODO (7): Pass a MaterialPageRoute() as the second parameter
            // TODO (8): Return ResultsScreen() to the builder of the MaterialPageRoute
            // TODO (9): Finally, pass the parameters of 'percentage' and 'result' to ResultsScreen()
          },
        ),
      ),
    );
  }
}
