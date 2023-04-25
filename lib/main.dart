import 'package:flutter/material.dart';
import 'package:noteapplication/screens/editNoteScreen.dart';
import 'package:noteapplication/screens/notesScreen.dart';
import 'package:noteapplication/themeData/myThemeData.dart';

void main (){
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      initialRoute: NotesScreen.routeName,
      routes: {
        NotesScreen.routeName:(context) => NotesScreen(),
        NoteEditScreen.routeName:(context) => NoteEditScreen(),

      },

    );
  }
}
