
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_implement/adddata.dart';

import 'list_provider.dart';

class ListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    List<Map<String, dynamic>> allData = Provider.of<ListProvider>(context).getData();

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Notes App'),
      ),
      body: ListView.builder(itemBuilder: (_ , index){
        return ListTile(
          title: Text('${allData[index]['title']}'),
          subtitle: Text('${allData[index]['desc']}'),
        );
      },
        itemCount: allData.length,

      )
      ,floatingActionButton: FloatingActionButton(
          onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Adddata()));
          },
      child: Icon(Icons.add),
      ),
    );
  }

}