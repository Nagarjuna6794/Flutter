import 'package:flutter/material.dart';
import 'package:sqlitedbexample/screens/note_detail.dart';
import 'package:sqlitedbexample/utils/database_helper.dart';
import 'package:sqlitedbexample/models/note.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart';

class NoteList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NoteListState();
  }
}

class  NoteListState extends State<NoteList> {
  DatabaseHelper databaseHelper=DatabaseHelper();
  List<Note> noteList;
  int _count=0;

  @override
  Widget build(BuildContext context) {

    if (noteList==null) {
      noteList=List<Note>();
      updateListView();
    }

    return Scaffold(appBar: AppBar(
      title: Text('Notes'),
    ),
    body: getNoteListView(),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        navigateToDetail(Note('', '', 2),"Add note");
      },
      tooltip: 'Add note',
      child: Icon (Icons.add),
    ),
    );
    
  }
  
  ListView getNoteListView(){
    TextStyle titleStyle=Theme.of(context).textTheme.subhead;
     
     return ListView.builder(
       itemCount: _count,
       itemBuilder:(BuildContext contex,int position){
         return Card(
           color: Colors.white,
           elevation: 2.0,
           child: ListTile(
             leading: CircleAvatar(
               backgroundColor: getPriorityColor(this.noteList[position].priority),
               child: getPriorityIcon(this.noteList[position].priority),
             ),
             title: Text(this.noteList[position].title,style:titleStyle),
             subtitle: Text(this.noteList[position].date,style:titleStyle),
             trailing: GestureDetector(
               child: Icon(Icons.delete,color:Colors.grey),
               onTap: (){
                 _delete(context, noteList[position]);
               },
             ), 
             onTap: (){
               navigateToDetail(this.noteList[position],"Edit note");
             },
           ),
         );
       } ,
     );
  }

  // Returns the priority icon
	Icon getPriorityIcon(int priority) {
		switch (priority) {
			case 1:
				return Icon(Icons.play_arrow);
				break;
			case 2:
				return Icon(Icons.keyboard_arrow_right);
				break;

			default:
				return Icon(Icons.keyboard_arrow_right);
		}
	}

   // Returns the priority color
	Color getPriorityColor(int priority) {
		switch (priority) {
			case 1:
				return Colors.red;
				break;
			case 2:
				return Colors.yellow;
				break;

			default:
				return Colors.yellow;
		}
	}

  void _delete(BuildContext context, Note note)async{
    int result=await databaseHelper.deleteNote(note.id);
    if(result!=0){
      _showSnackBar(context,'Note Deleted Successfully');
      updateListView();
    }
  }

  void _showSnackBar(BuildContext context, String message) {

		final snackBar = SnackBar(content: Text(message));
		Scaffold.of(context).showSnackBar(snackBar);
	}

  void navigateToDetail(Note note,String title) async{
  bool result=await Navigator.push(context, MaterialPageRoute(builder:  (context){
                 return NoteDetails(note,title);
               }));
    if (result==true) {
      updateListView();
    }           
  }

  void updateListView(){
    final Future<Database> dbFuture=databaseHelper.initializeDatabase();
    dbFuture.then((database){
      Future<List<Note>> noteListFuture=databaseHelper.getNoteList();
      noteListFuture.then((noteList){
        setState(() {
         this.noteList=noteList;
         this._count=noteList.length; 
        });
      });
  });
  }
}