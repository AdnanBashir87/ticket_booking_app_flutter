import 'package:flutter/material.dart';
import '../res/styles/app_styles.dart';

class DoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  final VoidCallback func;

  const DoubleTextWidget({
    super.key,
    this.bigText = '',
    this.smallText = 'View all',
    required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headlineStyle2),
        InkWell(
          onTap: func,
          child: Text(
            smallText,
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        ),
      ],
    );
  }
}
