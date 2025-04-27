import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invoicing_dashboard/core/utils/colors.dart';
import 'package:invoicing_dashboard/core/utils/text_style.dart';
import 'package:invoicing_dashboard/models/user_info_model.dart';

class QuickInvoiceListItem extends StatelessWidget {
  const QuickInvoiceListItem({
    super.key,
  });

  static const items = [
    UserInfoModel(
        image: "assets/Frame.svg",
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: "assets/Frame (1).svg",
        title: 'Josua Nunito',
        subtitle: "Josh Nunito@gmail.com"),
    UserInfoModel(
        image: "assets/Frame.svg",
        title: 'John Doe',
        subtitle: 'John Doe@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(16),
      ),
      child: SizedBox(
        height: 80,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return IntrinsicWidth(
                child: ListTile(
                  leading: SvgPicture.asset(items[index].image),
                  title: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(items[index].title, style: getTitleStyle(context))),
                  subtitle: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      items[index].subtitle,
                      style: getSmallStyle(context),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
