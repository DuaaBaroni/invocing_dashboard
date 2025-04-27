import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/colors.dart';
import 'package:invoicing_dashboard/core/utils/text_style.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.grey)
      ),
      child: Row(
        children: [
          Text("Montly", style: getTitleStyle(context , fontWeight: FontWeight.normal)
          ),
          Icon(Icons.arrow_drop_down, color: AppColors.grey,)
        ],
      ),
    );
  }
}