import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storybook/app/core/utils/assets_path.dart';
import 'package:storybook/app/core/utils/color_palette.dart';

class GoogleLoginWidget extends StatefulWidget {
  const GoogleLoginWidget({super.key});

  @override
  State<GoogleLoginWidget> createState() => _GoogleLoginWidgetState();
}

class _GoogleLoginWidgetState extends State<GoogleLoginWidget> {
  final double widthAndHeight = 50;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            width: widthAndHeight,
            height: widthAndHeight,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: ColorPalette.lightBlack2, width: 2),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(Assets.appleLogo),
          ),
        ),
        const SizedBox(width: 20),
        InkWell(
          onTap: () {},
          child: Container(
            width: widthAndHeight,
            height: widthAndHeight,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: ColorPalette.lightBlack2, width: 2),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(Assets.googleLogo),
          ),
        ),
        const SizedBox(width: 20),
        InkWell(
          onTap: () {},
          child: Container(
            width: widthAndHeight,
            height: widthAndHeight,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: ColorPalette.lightBlack2, width: 2),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(Assets.facebookLogo),
          ),
        ),
      ],
    );
  }
}
