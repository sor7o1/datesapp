import 'package:flutter/material.dart';

 WidgetAppBar(String userName, String userPhotoUrl) {

  // AppBar widget with user information
return AppBar(
  automaticallyImplyLeading: false,
  elevation: 0,
  backgroundColor: Colors.white,
  title: Text(
    'Hola, ${userName}',
    style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
  ),
  actions: [
    CircleAvatar(
      backgroundImage: NetworkImage(userPhotoUrl),
    ),
    SizedBox(width: 16),
  ],
);
}