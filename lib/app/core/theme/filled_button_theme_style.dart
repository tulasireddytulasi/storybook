import 'package:flutter/material.dart';
import 'package:storybook/app/core/utils/color_palette.dart';

@immutable
class FilledButtonThemeStyle extends ButtonStyle {
  final Color? enabledButtonColor, disabledButtonColor;
  final Color? enabledTextColor, disabledTextColor;
  final EdgeInsets? buttonPadding;
  final TextStyle? customTextStyle;
  const FilledButtonThemeStyle({
    this.disabledButtonColor,
    this.disabledTextColor,
    this.enabledButtonColor,
    this.enabledTextColor,
    this.buttonPadding,
    this.customTextStyle,
  });

  @override
  MaterialStateProperty<Color?>? get backgroundColor {
    return MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return disabledButtonColor ?? ColorPalette.grey;
        }

        return enabledButtonColor ?? ColorPalette.blue;
      },
    );
  }

  @override
  MaterialStateProperty<EdgeInsetsGeometry?>? get padding {
    return buttonPadding == null ? const MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(horizontal: 20, vertical: 10)) : MaterialStatePropertyAll<EdgeInsets>(buttonPadding!);
  }

  @override
  MaterialStateProperty<Color?>? get foregroundColor {
    return MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return disabledTextColor ?? Colors.white;
        }

        return enabledTextColor ?? Colors.white;
      },
    );
  }

  @override
  MaterialStateProperty<TextStyle?>? get textStyle {
    return customTextStyle == null ? null : MaterialStatePropertyAll<TextStyle?>(customTextStyle);
  }
}
