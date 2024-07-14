import '../res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  final bool isRight;

  const BigCircle({
    super.key,
    required this.isRight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppStyles.bgColor,
          borderRadius: isRight
              ? const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )
              : const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
        ),
      ),
    );
  }
}
