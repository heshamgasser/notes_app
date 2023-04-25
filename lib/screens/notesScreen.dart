import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noteapplication/widget/addNoteWidget.dart';
import 'package:noteapplication/widget/noteWidget.dart';

class NotesScreen extends StatelessWidget {
  static const String routeName = 'Notes Screen';

  // List <Widget> notes = [NoteWidget(),NoteWidget(),NoteWidget(),NoteWidget(),NoteWidget(),NoteWidget(),];
  List<Color> colors = [
    Colors.orangeAccent,
    Colors.yellowAccent,
    Colors.purpleAccent,
    Colors.redAccent,
    Colors.greenAccent,
    Colors.cyanAccent,
    Colors.blueAccent,
    Colors.amberAccent,
    Colors.tealAccent,
    Colors.limeAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Notes'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10, top: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black12),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return NoteWidget(colors[index]);
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 5,
            );
          },
          itemCount: 10),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width / 5,
        height: MediaQuery.of(context).size.height / 5,
        child: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddNoteWidget();
              },
            );
          },
          child: Icon(CupertinoIcons.plus),
        ),
      ),
    );
  }
}
