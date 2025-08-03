import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

class BdAppBar extends AppBar {
  BdAppBar({super.key, String? title})
    : super(
        title: title != null ? Text(title, style: BdTStyles.s18w700) : null,
      );
}
