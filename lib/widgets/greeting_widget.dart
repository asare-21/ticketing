import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:tickets/config/helpers.dart';
import 'package:tickets/providers/greeting_provider.dart';

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Consumer<GreetingProvider>(
              builder: (context, value, child) => Text(
                    value.getGreeting(),
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade500),
                  )),
          const Gap(5),
          Text(
            "Book Tickets",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const Gap(25),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: Styles.bgColor, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Icon(
                  FluentSystemIcons.ic_fluent_search_regular,
                  color: Styles.textColor,
                ),
                const Gap(10),
                Text(
                  "Search",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Styles.textColor),
                )
              ],
            ),
          ),
          const Gap(35),
        ],
      ),
    );
  }
}
