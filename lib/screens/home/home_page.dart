import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import '../../base/res/media.dart';
import '../../base/res/styles/app_styles.dart';
import '../../base/utils/app_routes.dart';
import '../../base/utils/ticket_json.dart';
import '../../base/widgets/double_text_widget.dart';
import '../../base/widgets/ticket_view.dart';
import 'widget/hotel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: AppStyles.headlineStyle3,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Book Tickets',
                          style: AppStyles.headlineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(AppMedia.logo),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xfff4f6fd),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  child: const Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular),
                      SizedBox(width: 5),
                      Text('Search'),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                DoubleTextWidget(
                  bigText: 'Upcoming Flights',
                  func: () =>
                      Navigator.pushNamed(context, AppRoutes.allticketspage),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList
                        .map((singleTicket) => TicketView(ticket: singleTicket))
                        .toList(),
                  ),
                ),
                const SizedBox(height: 20),
                DoubleTextWidget(
                  bigText: 'Hotels',
                  func: () =>
                      Navigator.pushNamed(context, AppRoutes.allhotelspage),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .map(
                          (singlehotel) => Hotel(hotel: singlehotel),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
