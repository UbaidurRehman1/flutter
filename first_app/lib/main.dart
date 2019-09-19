//material dart has lot of widgets
import 'package:flutter/material.dart';

void main() {
    runApp(new MyApp());
}

//custom class which extends statelessWidget
class MyApp extends StatelessWidget {

    @override
    Widget build(BuildContext context)
    {
        //we are creating a MaterialApp Widge giving home (which is Text widget)
        MaterialApp materialApp = new MaterialApp(home: Text('Hello, Ubaid'));
        return materialApp;
    }

}
