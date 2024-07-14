import 'package:flutter/cupertino.dart';
import 'package:ticket_booking_app_flutter/base/widgets/text_style_fourth.dart';
import 'package:ticket_booking_app_flutter/base/widgets/text_style_third.dart';

class AppColumnText extends StatelessWidget {
  final CrossAxisAlignment crossAxisAlignment;
  final String topText;
  final String bottomText;
  final bool? isColor;

  const AppColumnText({
    super.key,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    required this.topText,
    required this.bottomText, this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        TextStyleThird(
          text: topText,
          isColor: isColor,
        ),
        const SizedBox(height: 5),
        TextStyleFourth(
          text: bottomText,
          isColor: isColor,
        ),
      ],
    );
  }
}
