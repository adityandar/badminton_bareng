import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:flutter/material.dart';

class MainBackgroundView extends StatelessWidget {
  const MainBackgroundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            HexColor('#D6E6A9').withAlpha(80),
            HexColor('#7ED6D4').withAlpha(80),
          ],
        ),
      ),
    );
  }
}
