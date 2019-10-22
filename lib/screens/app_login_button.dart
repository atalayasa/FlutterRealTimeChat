import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Function navigateTo;

  RoundedButton({this.label, this.backgroundColor, this.navigateTo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: backgroundColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            navigateTo();
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(label, style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}