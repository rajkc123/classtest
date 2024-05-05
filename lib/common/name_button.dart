// lib/widgets/name_button.dart

import 'package:flutter/material.dart';

class NameButton extends StatefulWidget {
  final int index;

  NameButton({required this.index});

  @override
  _NameButtonState createState() => _NameButtonState();
}

class _NameButtonState extends State<NameButton> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isVisible,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _isVisible = !_isVisible;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // Initial button color
        ),
        child: Text(
          '${widget.index + 1}', // Just to display index
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
