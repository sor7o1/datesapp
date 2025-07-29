import 'package:flutter/material.dart';

Widget DetailBusiness(salon) {
  return InkWell(
    onTap: () {
      // acción
    },
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: ListTile(
        contentPadding: EdgeInsets.all(12),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            salon['image']!,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          salon['name']!,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(salon['address']!),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
      ),
    ),
  );
}
