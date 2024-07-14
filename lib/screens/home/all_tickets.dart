import 'package:flutter/material.dart';

import '../../base/res/styles/app_styles.dart';
import '../../base/utils/app_routes.dart';
import '../../base/utils/ticket_json.dart';
import '../../base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        backgroundColor: AppStyles.bgColor,
        title: const Text('All Tickets'),
        elevation: 0,
        centerTitle: false,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: ticketList
                  .map(
                    (singleTicket) => GestureDetector(
                      onTap: () {
                        var index = ticketList.indexOf(singleTicket);
                        Navigator.pushNamed(context, AppRoutes.ticketPage,
                            arguments: {"index": index});
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: TicketView(
                          ticket: singleTicket,
                          wholeScreen: true,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
