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

          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            title: Text(
              'Flutter Tips',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            subtitle: Text(
              'Build Your Carrer with Hesham Gasser',
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete,
              ),
            ),
            isThreeLine: true,
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
