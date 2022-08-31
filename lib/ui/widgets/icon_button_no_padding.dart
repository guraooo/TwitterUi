import 'package:flutter/material.dart';

class IconButtonNoPadding extends IconButton {
  const IconButtonNoPadding(
      {Key? key,
      required Function() onPressed,
      required Icon icon,
      Color? color})
      : super(
          key: key,
          onPressed: onPressed,
          icon: icon,
          color: color,
          // 以下2つはPaddingをなくすため
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          // 以下2つは押下時のeffectを取り除くため
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        );
}
