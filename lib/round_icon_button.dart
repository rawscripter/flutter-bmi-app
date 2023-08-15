import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        constraints: const BoxConstraints.tightFor(
          width: 56,
          height: 56,
        ),
        shape: const CircleBorder(),
        onPressed: () {
          onPressed();
        },
        elevation: 6.0,
        fillColor: const Color(0xFF4C4F5E),
        child: Icon(
          icon,
          color: Colors.white,
        ));
  }
}
