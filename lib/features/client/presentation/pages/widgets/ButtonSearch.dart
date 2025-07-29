import 'package:flutter/material.dart';

Widget ButtonSearch() {
  return ElevatedButton.icon(
    style: ElevatedButton.styleFrom(
      // backgroundColor: Colors.pinkAccent,
      foregroundColor: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
    icon: Icon(Icons.search),
    label: Text('Buscar salones cerca'),
    onPressed: () {
      // Acción
    },
  );
}
