import 'package:flutter/material.dart';

class DynamicListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic List View"),),
        body: getListView(),
    );
  }

}

List<String> getListElements(){

  var items=List<String>.generate(1000, (counter)=>"Item $counter");
  return items;
}

Widget getListView(){
  var listItems=getListElements();
  var listView=ListView.builder(
    itemBuilder: (context,index){
      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(listItems[index]),
        onTap: (){
          debugPrint('${listItems[index]} was tapped');
        },
      );
    }
  );
  return listView;
}