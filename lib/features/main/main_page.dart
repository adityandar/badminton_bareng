import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/routers/index.dart';
import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text('Badmintoon App', style: BdTStyles.s16w700),
            ),
          ),
          Center(
            child: BdElevatedButton(
              onPressed: () => context.pushRoute(InputPlayerRoute()),
              title: 'Tap to Start',
              backgroundColor: BdColors.primary,
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
