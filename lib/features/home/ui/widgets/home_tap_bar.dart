import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/themes/text_styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text('Hi, Mustafa', style: TextStyles.font18DarkBlueBold),
            Text('How are you?', style: TextStyles.font12GrayRegular),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 25,
          backgroundColor: ColorsManger.lighterGray,
          child: SvgPicture.asset(AssetsManger.notificationIcon),
        ),
      ],
    );
  }
}
