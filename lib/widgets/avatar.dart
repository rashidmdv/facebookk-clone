import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;

  const Avatar({
    super.key,
    required this.displayImage,
    required this.displayStatus,
    this.displayBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder
                ? Border.all(width: 3, color: Colors.blue)
                : null,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(displayImage, width: 50, height: 50),
          ),
        ),
        displayStatus
            ? Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
