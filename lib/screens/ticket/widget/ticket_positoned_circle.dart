import 'package:flutter/material.dart';

import '../../../base/res/styles/app_styles.dart';

class TicketPositonedCircle extends StatelessWidget {
  const TicketPositonedCircle({super.key, this.isPos});
  final bool? isPos;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 278,
      right: isPos == true ? 26 : null,
      left: isPos == true ? null : 26,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppStyles.textColor,
            width: 2,
          ),
        ),
        child: CircleAvatar(
          maxRadius: 3,
          backgroundColor: AppStyles.textColor,
        ),
      ),
    );
  }
}
