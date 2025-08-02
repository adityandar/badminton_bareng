import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

class MatchBottomView extends StatelessWidget {
  const MatchBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Tekan tombol di bawah\nuntuk menentukan pemenang',
          style: BdTStyles.s12w500,
          textAlign: TextAlign.center,
        ),
        Gap(16),
        Row(
          children: [
            Expanded(
              child: BdInkWell(
                onTap: () {
                  // Handle left team win
                },
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(color: BdColors.red),
                child: Center(
                  child: Text(
                    'Merah Menang',
                    style: BdTStyles.s16w700.copyWith(color: BdColors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: BdInkWell(
                onTap: () {
                  // Handle right team win
                },
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(color: BdColors.blue),
                child: Center(
                  child: Text(
                    'Biru Menang',
                    style: BdTStyles.s16w700.copyWith(color: BdColors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
