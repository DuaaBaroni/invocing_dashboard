import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invoicing_dashboard/core/utils/text_style.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: const Color(0xFFFAFAFA),
        elevation: 0,
        child: ListTile(
          leading: SvgPicture.asset("assets/Frame.svg", height: 35),
          title: FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              "Lekan Okeowo",
              style: getTitleStyle(context),
            ),
          ),
           subtitle: Text("demo@gmail.com", style: getSmallStyle(context)
          ),
        )
     );
   }
 }
