import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/widgets/elongated_ticket.dart';
import 'package:tickets/widgets/ticket_view.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Tickets",
                    textAlign: TextAlign.left,
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const Gap(10),
                const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(
                      text: "Upcoming",
                    ),
                    Tab(
                      text: "Past",
                    )
                  ],
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      ElongatedTicket(),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: TicketView(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
