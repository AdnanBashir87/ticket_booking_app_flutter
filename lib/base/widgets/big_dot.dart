import 'package:flutter/material.dart';
import '../res/styles/app_styles.dart';

class BigDot extends StatelessWidget {
  const BigDot({super.key, this.isColor});
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(
          color:
              isColor == null ? AppStyles.ticketWhite : AppStyles.bigDotColor,
          width: 2.5,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
