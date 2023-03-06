import 'package:flutter/material.dart';

//Animated button
class AnimatedButton extends StatefulWidget {
  final String text;
  final Function onPressed;

  const AnimatedButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (tapDownDetails) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (tapUpDetails) {
        setState(() {
          _isPressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      onTap: () {
        widget.onPressed();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: _isPressed ? Colors.red[700] : Colors.red,
        ),
        child: Text(
          widget.text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

//Complete and cancel button
class ToggleWidget extends StatefulWidget {
  const ToggleWidget({Key? key}) : super(key: key);

  @override
  _ToggleWidgetState createState() => _ToggleWidgetState();
}

class _ToggleWidgetState extends State<ToggleWidget> {
  bool _isComplete = false;

  void _toggleStatus() {
    setState(() {
      _isComplete = !_isComplete;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
           height: 70.0,
            width: 200.0,
            decoration: BoxDecoration(border: Border.all(width: 1.0,color: Colors.black)),
          
          child: GestureDetector(
              onTap: () {
                _toggleStatus();
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0,bottom: 20.0),
                child: Text(
                  _isComplete ? "Cancelled" : "Completed",
                  style: const TextStyle(color: Colors.green, fontSize: 24.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          
        ),
      ],
    );
  }
}