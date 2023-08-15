import 'package:flutter/material.dart';

// class ReuseableCard extends StatelessWidget {
//   const ReuseableCard({
//     super.key,
//     required this.color,
//     this.child,
//     this.onPress,
//   });
//
//   final Color color;
//   final Widget? child;
//   final Function? onPress;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: widgonPress,
//       child: Container(
//         margin: const EdgeInsets.all(15),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5),
//           color: color,
//         ),
//         child: child,
//       ),
//     );
//   }
// }

class ReuseableCard extends StatefulWidget {
  const ReuseableCard({
    super.key,
    required this.color,
    this.child,
    this.onPress,
  });

  final Color color;
  final Widget? child;
  final Function? onPress;

  @override
  State<ReuseableCard> createState() => _ReuseableCardState();
}

class _ReuseableCardState extends State<ReuseableCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onPress!();
      },
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: widget.color,
        ),
        child: widget.child,
      ),
    );
  }
}
