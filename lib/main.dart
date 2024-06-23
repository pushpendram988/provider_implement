//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_implement/adddata.dart';
import 'package:provider_implement/list_provider.dart';
//import 'package:provider_implement/provider_basic.dart';

import 'ListPage.dart';

void main() {runApp(
  ChangeNotifierProvider(create: (context)=>ListProvider(),
  child: MyApp(),),
);


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListPage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,

      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<ListProvider>(context).addData({
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }

/*class SecondPage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          Provider.of<provider>(context, listen: false).incrementCount();

        },

      ),
    );
  }
}*/
}
