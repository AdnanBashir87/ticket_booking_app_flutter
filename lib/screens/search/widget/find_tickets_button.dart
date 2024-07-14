import 'package:flutter/material.dart';

import '../../../base/res/styles/app_styles.dart';

class FindTicketsButton extends StatelessWidget {
  const FindTicketsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      decoration: BoxDecoration(
        color: AppStyles.findTicketsColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        'Find Tickets',
        style: AppStyles.textStyle.copyWith(color: Colors.white),
      ),
    );
  }
}
