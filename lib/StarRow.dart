
import 'package:flutter/material.dart';

class StarRow extends StatelessWidget {
  const StarRow({this.starAmount });
  final int starAmount;

 @override
 Widget build(BuildContext context) {
   switch (starAmount) {
      case 4:
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow)
          ],
      );
      case 3:
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.grey)
          ],
      );
      case 2:
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.grey),
            Icon(Icons.star, color: Colors.grey)
          ],
      );
      case 1:
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.grey),
            Icon(Icons.star, color: Colors.grey),
            Icon(Icons.star, color: Colors.grey)
          ],
      );
      default:
        return Text('No star data found');
   }
 }
}