import 'package:flutter/material.dart';

Widget DetailUser(userPhotoUrl,userName, currentAddress) {
  return Container(
    width: double.infinity,
    height: 180,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(userPhotoUrl),
        fit: BoxFit.cover,
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black.withOpacity(0.6), Colors.transparent],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      padding: EdgeInsets.all(16),
      alignment: Alignment.bottomLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            userName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            currentAddress,
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    ),
  );
}
