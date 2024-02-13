import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/config/app_layout.dart';

List<String> _images = [
  "assets/images/1.jpg",
  "assets/images/2.jpg",
  "assets/images/3.jpg",
  "assets/images/4.jpg",
  "assets/images/5.jpg",
];

class HotelsWidget extends StatelessWidget {
  const HotelsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(children: [
        const Gap(40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Hotels",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            TextButton(onPressed: () {}, child: const Text("View All"))
          ],
        ),
        const Gap(20),
        SizedBox(
          height: size.height * 0.3,
          child: ListView.builder(
            itemCount: _images.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(right: 20),
              child: SizedBox(
                width: size.width / 2,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        _images[index],
                        height: (size.height * 0.4) * 0.4,
                        width: size.width / 2,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Gap(10),
                    SizedBox(
                      width: size.width / 2,
                      child: Text(
                        "Wonderous Light",
                        textAlign: TextAlign.left,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Gap(5),
                    SizedBox(
                      width: size.width / 2,
                      child: Text(
                        "London",
                        textAlign: TextAlign.left,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.grey),
                      ),
                    ),
                    const Gap(5),
                    SizedBox(
                      width: size.width / 2,
                      child: Text(
                        "£50/night",
                        textAlign: TextAlign.left,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
