import 'package:flutter/material.dart';

class SnackBarExample extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("Snack Bar Example"),),
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
          showSnackBar(context,listItems[index]);
          //debugPrint('${listItems[index]} was tapped');
        },
      );
    }
  );
  return listView;
}

void showSnackBar(BuildContext context,String item){
  var snackBar=SnackBar(
    content: Text("You just tapped $item"),
    action: SnackBarAction(
      label: "UNDO",
      onPressed: (){
        debugPrint("Performing dummy UNDO operation");
      },
    ),
    );
    
    Scaffold.of(context).showSnackBar(snackBar);
}