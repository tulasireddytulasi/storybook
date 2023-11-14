import 'package:flutter/material.dart';
import 'package:storybook/app/core/utils/color_palette.dart';
import 'package:storybook/app/core/utils/fonts_constants.dart';

class TextStyles {
  static const TextStyle regularBlack14 = TextStyle(fontSize: 14, color: ColorPalette.black, fontFamily: Fonts.montserratRegular);
  static const TextStyle mediumBlack1Bold26 = TextStyle(fontSize: 26, color: ColorPalette.black1, fontFamily: Fonts.montserratRegular, fontWeight: FontWeight.bold);
  static const TextStyle mediumLightBlack14 = TextStyle(fontSize: 14, color: ColorPalette.lightBlack, fontFamily: Fonts.montserratMedium);
  static const TextStyle mediumLightBlack12 = TextStyle(fontSize: 12, color: ColorPalette.lightBlack, fontFamily: Fonts.montserratMedium);

  static const TextStyle mediumBlack14 = TextStyle(fontSize: 14, color: ColorPalette.black, fontFamily: Fonts.montserratMedium);
  static const TextStyle mediumBlack18 = TextStyle(fontSize: 18, color: ColorPalette.black, fontFamily: Fonts.montserratMedium);
  static const TextStyle mediumBlueUnderline14 = TextStyle(
    decoration: TextDecoration.underline,
    decorationColor: ColorPalette.blue, // Color of the underline
    decorationThickness: 2.0, // Thickness of the underline
    decorationStyle: TextDecorationStyle.solid, // Style of the underline,
    fontSize: 14, color: ColorPalette.blue, fontFamily: Fonts.montserratMedium,
  );

  static const TextStyle mediumLightBlack18 = TextStyle(color: ColorPalette.lightBlack, fontSize: 18, fontFamily: Fonts.montserratMedium);
}
