import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/colors.dart';
import 'package:invoicing_dashboard/core/utils/text_style.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage("assets/card-background.png")),
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                contentPadding: const EdgeInsets.all(16),
                title: Text("Name card", style: getBodyStyle(context)),
                subtitle: Text("Syah Bandi", style: getBodyStyle(context)),
                trailing: const Icon(Icons.image)),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 48 - 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("0918 8124 0042 8129", style: getBodyStyle(context)),
                  Text(
                    "12/20 - 006",
                    style: getBodyStyle(context),
                  )
                ],
              ),
            ),
            const Flexible(
                child: SizedBox(
              height: 54 - 28,
            )),
          ],
        ),
      ),
    );
  }
}
