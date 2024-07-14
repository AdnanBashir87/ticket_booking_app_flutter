import 'package:flutter/material.dart';

import '../../base/res/styles/app_styles.dart';
import '../../base/widgets/app_ticket_tabs.dart';
import '../../base/widgets/double_text_widget.dart';
import 'widget/app_text_item.dart';
import 'widget/find_tickets_button.dart';
import 'widget/promotions.dart';
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        children: [
          const SizedBox(height: 40),
          Text(
            'What are\nyou looking for?',
            style: AppStyles.headlineStyle1.copyWith(fontSize: 35),
          ),
          const SizedBox(height: 20),
          const AppTicketTabs(tabText1: 'All Tickets', tabText2: 'Hotels', vPadding: 7),
          const SizedBox(height: 25),
          const AppTextItem(
            text: 'Departure',
            icon: Icons.flight_takeoff_rounded,
          ),
          const SizedBox(height: 20),
          const AppTextItem(
            text: 'Arrival',
            icon: Icons.flight_land_rounded,
          ),
          const SizedBox(height: 25),
          const FindTicketsButton(),
          const SizedBox(height: 40),
          DoubleTextWidget(
            bigText: 'Upcoming Flights',
            func: () => Navigator.pushNamed(context, '/all_tickets'),
          ),
          const SizedBox(height: 10),
          const Promotions(),
        ],
      ),
    );
  }
}
