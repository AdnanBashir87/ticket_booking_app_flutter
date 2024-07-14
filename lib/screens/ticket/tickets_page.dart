import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

import '../../base/res/media.dart';
import '../../base/res/styles/app_styles.dart';
import '../../base/utils/ticket_json.dart';
import '../../base/widgets/app_column_text.dart';
import '../../base/widgets/app_layout_builder_widget.dart';
import '../../base/widgets/app_ticket_tabs.dart';
import '../../base/widgets/ticket_view.dart';
import 'widget/ticket_positoned_circle.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({super.key});

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
  int ticketIndex = 0;

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      ticketIndex = args["index"];
      super.didChangeDependencies();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        backgroundColor: AppStyles.bgColor,
        title: const Text(
          "Tickets",
        ),
        centerTitle: false,
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              // const SizedBox(height: 50),
              // Text(
              //   "Tickets",
              //   style: AppStyles.headlineStyle1,
              // ),
              // const SizedBox(height: 25),
              const AppTicketTabs(
                  tabText1: 'Upcoming', tabText2: 'Previous', vPadding: 10),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                  isColor: true,
                ),
              ),
              const SizedBox(height: 1),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                color: AppStyles.ticketWhite,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnText(
                          topText: 'Flutter DB',
                          bottomText: 'Passenger',
                          isColor: true,
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                        AppColumnText(
                          topText: '3560 35410',
                          bottomText: 'passport',
                          isColor: true,
                          crossAxisAlignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const AppLayoutBuilderWidget(
                      ranDivider: 16,
                      width: 6,
                      isColor: true,
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnText(
                          topText: '333019 90334810',
                          bottomText: 'Number of E-ticket',
                          isColor: true,
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                        AppColumnText(
                          topText: 'B3SG28',
                          bottomText: 'Booking code',
                          isColor: true,
                          crossAxisAlignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const AppLayoutBuilderWidget(
                      ranDivider: 16,
                      width: 6,
                      isColor: false,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  AppMedia.visalogo,
                                  scale: 100,
                                ),
                                Text(
                                  " *** 2446",
                                  style: AppStyles.headlineStyle3,
                                )
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Payment method',
                              style: AppStyles.headlineStyle4,
                            )
                          ],
                        ),
                        const AppColumnText(
                          topText: '\$249.99',
                          bottomText: 'Price',
                          isColor: true,
                          crossAxisAlignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: AppStyles.ticketWhite,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21),
                  ),
                ),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      height: 70,
                      data: 'https://www.adnanbashir.com',
                      drawText: false,
                      barcode: Barcode.code128(),
                      color: AppStyles.textColor,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                ),
              ),
            ],
          ),
          const TicketPositonedCircle(isPos: true),
          const TicketPositonedCircle(isPos: null),
        ],
      ),
    );
  }
}
