import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int ranDivider;
  final double width;
  final bool? isColor;

  const AppLayoutBuilderWidget({
    super.key,
    required this.ranDivider,
    this.width = 3,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // print('${(constraints.constrainWidth() / ranDivider).round()}');
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            (constraints.constrainWidth() / ranDivider).round(),
            (index) => SizedBox(
              height: 1,
              width: width,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isColor == null
                      ? AppStyles.ticketWhite
                      : Colors.grey.shade300,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
