import 'package:flutter/material.dart';
import 'package:multi_provider_state_managment/x_provider.dart';
import 'package:provider/provider.dart';

import 'Main_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers:[
          ChangeNotifierProvider(create: (_)=> value_provider()) ,

        ],
      child:  MaterialApp(
        home: Main_screen(),
      ),

    );
  }
}
