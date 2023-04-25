import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noteapplication/screens/editNoteScreen.dart';

class NoteWidget extends StatelessWidget {
  Color containerColor;

  NoteWidget (this.containerColor);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacementNamed(context, NoteEditScreen.routeName);
      },
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(20),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 4,
          ),
          Positioned(
            top: 40,
            left: 30,
            child: Text(
              'Flutter Tips',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Positioned(
            top: 110,
            left: 30,
            child: Text(
              'Build Your Carrer with Hesham Gasser',
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Positioned(
            right: 30,
            top: 50,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete,
                  ),
            ),
          ),
          Positioned(
            bottom: 40,
            right: 30,
            child: Text(
              'April 24 , 2023',
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
