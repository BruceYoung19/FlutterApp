/*                     | DOCUMENTATION OF CODE |
Normally I will not do this, but since this my first flutter app. This is
for documentation purposes.

Day 1 - INSTALLATION:
No issues with install Android studio or Flutter addon.

Day 2 - TESTING AND DEVELOPMENT:
no errors when building my first app
Code for Learning: D2B1
*/

import 'package:flutter/material.dart';


void main() {
/*              |CODE: D2B1|
   Learning: Dart programming language is based in a hierarchy system. The code
   requires the modules name first, then the method to allow the coder to modify.

   Places to find the documentation - https://docs.flutter.dev/development/ui/widgets/material
*/
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text("Title Text"),
          backgroundColor: Colors.greenAccent,
        ),

      ),
    ),
  );
}
