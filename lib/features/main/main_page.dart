import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import 'views/index.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MainBackgroundView(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: const [
              MainHeaderView(),
              Expanded(child: MainBodyView()),
              MainBottomView(),
            ],
          ),
        ),
      ],
    );
  }
}
