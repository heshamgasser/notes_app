import 'package:flutter/material.dart';
import 'package:noteapplication/widget/textFieldWidget.dart';

class NoteEditScreen extends StatelessWidget {
  static const String routeName = 'Note Edit Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Note',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10, top: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black12),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.done),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFieldWidget(hint: 'Title'),
            SizedBox(height: 10),
            TextFieldWidget(hint: 'Content' , maxLines: 5,),
          ],
        ),
      ),
    );
  }
}
