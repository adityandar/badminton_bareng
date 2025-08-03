import 'package:badmintoon/gen/gen.dart';
import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

class MainHeaderView extends StatelessWidget {
  const MainHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Image.asset(Assets.images.logoBadmintoonFilled.path, width: 82),
            Text(
              'Badmintoon',
              style: BdTStyles.s20w700.copyWith(fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
    );
  }
}
