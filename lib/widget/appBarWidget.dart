import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {

  String appBarTitle;
  Icon appBarIcon;

  AppBarWidget({required this.appBarTitle ,required this.appBarIcon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(appBarTitle),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 10, top: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.black12),
          child: IconButton(
            onPressed: () {},
            icon: appBarIcon,
          ),
        ),
      ],
    );
  }
}
