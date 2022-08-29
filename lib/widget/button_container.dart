import 'package:calculator/utils/constant.dart';
import 'package:flutter/material.dart';

class ButtonContainer extends StatefulWidget {
  final String title;
  final Color color;
  final VoidCallback onTap;
  // final Widget icon;

  const ButtonContainer({
    Key? key,
    required this.title,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  State<ButtonContainer> createState() => _ButtonContainerState();
}

class _ButtonContainerState extends State<ButtonContainer> {
  // bool onPressed = false;

  // void _OnPointerdown(PointerDownEvent event) {
  //   setState(() {
  //     onPressed = true;
  //   });
  // }

  // void _onPointerUp(PointerUpEvent event) {
  //   setState(() {
  //     onPressed = false;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      highlightColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Container(
          height: 80,
          width: 80,
          decoration: const BoxDecoration(
              color: kLightMode,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                  color: kLightModeBS1,
                ),
                BoxShadow(
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                  color: kLightModeBS2,
                ),
              ]),
          child: Center(
            child: Text(
              widget.title,
              style: TextStyle(fontSize: 20, color: widget.color),
            ),
          ),
        ),
      ),
    );
  }
}
