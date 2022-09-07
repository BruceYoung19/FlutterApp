/*                     | DOCUMENTATION OF CODE |
Normally I will not do this, but since this my first flutter app. This is
for documentation purposes.

Day 1 - INSTALLATION:
No issues with install Android studio or Flutter addon.

Day 2 - TESTING AND DEVELOPMENT:
no errors when building my first app
Code for Learning: D2B1

Day 3 - ADDING COMPONENTS:
Learning to add components into the scaffold. Currently trying such as changing
font,color size. Currently no problems yet.
Code of Learning D3B1

Also Learning about the restructure of the code. I should now be using classes,
not just a main.

Day 4 - LIST (Displaying and Outputting):
A list and an object works the same way in java.
 */

import 'package:flutter/material.dart';
import 'Car.dart';

void main() {
/*              |CODE: D2B1|
   Learning: Dart programming language is based in a hierarchy system. The code
   requires the modules name first, then the method to allow the coder to modify.

   Places to find the documentation - https://docs.flutter.dev/development/ui/widgets/material
*/
  runApp(
    MaterialApp(home: Home()),
  );
}

/*
            |CODE: D2B1|
Will be making a stateless widget. This is something what is not able to be changed
over time. So anything that may have a counter or an that will change or automated.
cannot be in the class. Basically every variable will be on FINAL.

A stateful widget is a widget which will allow any variable to change.
*/
class Home extends StatelessWidget {

  // Declaring varaible
  /*            |CODE: D3B1|
     Declaring a variable is the same as any other language. This language is
     very close to Java.

     Also trying to add a list to the on the home page.

     Since I want to added more data. I will be making a class to allow more
     room for to display data.

   */
  List<Car> Cars = [
    Car(name:'Aqua',model:"CSW214122"),
    Car(name:'Fit',model:"SDW21432")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("Title Text"),
        backgroundColor: Colors.greenAccent,
      ),
      body:
      /*Container(
        //D3B1
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
        margin: EdgeInsets.all(30.0),
        child: Text(
          "Welcome to my app",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.black),
        ),
      ),*/
      Column( //|CODE: D3B1| - trying to display a list of data
      children: Cars.map((Cars){
        return Text('{$Cars.Model}');
      }).toList(),
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red,
      ),
    );
  }


}
