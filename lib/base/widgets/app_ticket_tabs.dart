import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class AppTicketTabs extends StatelessWidget {
  final String tabText1;
  final String tabText2;
  final double vPadding;
  const AppTicketTabs({super.key, required this.tabText1, required this.tabText2, required this.vPadding,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppStyles.tabBgColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppTab(
            text: tabText1,
            onTabColor: Colors.white,
            vPadding: vPadding,
          ),
          AppTab(
            isLeft: false,
            text: tabText2,
            onTabColor: AppStyles.tabBgColor,
            vPadding: vPadding,
          ),
        ],
      ),
    );
  }
}

class AppTab extends StatelessWidget {
  const AppTab({
    super.key,
    required this.text,
    required this.onTabColor,
    this.isLeft = true, this.vPadding = 7,
  });
  final String text;
  final Color onTabColor;
  final bool isLeft;
  final double vPadding;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width * 0.44,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: vPadding),
      decoration: BoxDecoration(
        borderRadius: isLeft == true
            ? const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              )
            : const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
        color: onTabColor,
      ),
      child: Text(text),
    );
  }
}
