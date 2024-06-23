import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_implement/list_provider.dart';

class Adddata extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Add Data on next page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Provider.of<ListProvider>(context , listen: false).addData({
            'title' : 'HAr HAr Mahadev',
            'desc' : 'list 1',
          });

          Navigator.pop(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

}