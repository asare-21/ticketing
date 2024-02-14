import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/config/helpers.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Gap(30),
              Text("What are you looking for?",
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontWeight: FontWeight.bold)),
              const Gap(20),
              const TabBar(indicatorSize: TabBarIndicatorSize.tab, tabs: [
                Tab(
                  text: "Airline Tickets",
                ),
                Tab(
                  text: "Hotels",
                )
              ]),
              const Expanded(
                  child: TabBarView(
                      children: [AirlineTickets(), AirlineTickets()]))
            ],
          ),
        ),
      ),
    ));
  }
}

class AirlineTickets extends StatelessWidget {
  const AirlineTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(30),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              color: Styles.bgColor, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Icon(
                Icons.flight_takeoff_rounded,
                color: Styles.textColor,
              ),
              const Gap(10),
              Text(
                "Departure",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.bold, color: Styles.textColor),
              )
            ],
          ),
        ),
        const Gap(20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              color: Styles.bgColor, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Icon(
                Icons.flight_land_rounded,
                color: Styles.textColor,
              ),
              const Gap(10),
              Text(
                "Arrival",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.bold, color: Styles.textColor),
              )
            ],
          ),
        ),
        const Gap(20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              color: Styles.bgColor, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Icon(
                FluentSystemIcons.ic_fluent_calendar_regular,
                color: Styles.textColor,
              ),
              const Gap(10),
              Text(
                "Departure Date",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.bold, color: Styles.textColor),
              )
            ],
          ),
        ),
        const Gap(30),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xD91130ce),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () {},
            child: SizedBox(
              width: double.infinity,
              child: Text(
                "Find Tickets",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ))
      ],
    );
  }
}
