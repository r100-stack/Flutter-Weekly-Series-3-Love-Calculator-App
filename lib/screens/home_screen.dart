import 'package:flutter/material.dart';
import 'package:love_calculator_3/widgets/names_container.dart';

// TODO (6): Import the newly downloaded http library.

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
            // The first part focuses on downloading the percentage and message.
            // For that, let's create the url
            // TODO (1): Create a string variable called "url" to hold the url...
            //    of our Love Calculator API and the names as two query parameters.
            // Our api also needs us to pass two headers, a host and a key.
            // TODO (2): Create a Map of <String, String> to hold the host and key headers.

            // Now we let's make the request to our API.
            // To do that, we need to include the http package.
            // Let's search for this package on the official Flutter libraries website: pub.dev
            // TODO (3): Search for the http package on pub.dev
            // TODO (4): Copy the library name and the version number.
            // Now let's add this dependency to our pubspec.yml

            // Now that we have the library, let's use it to make the request to our API
            // TODO (7): Call the http.get method and pass the url and headers
            // TODO (8): Print the response to the console to see if everything is working.
          },
        ),
      ),
    );
  }
}
