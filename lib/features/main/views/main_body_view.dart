import 'package:badminton_bareng/gen/gen.dart';
import 'package:flutter/material.dart';

class MainBodyView extends StatelessWidget {
  const MainBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        Assets.images.imgBadmintonIllustration.path,
        height: MediaQuery.of(context).size.width * 1,
      ),
    );
  }
}
