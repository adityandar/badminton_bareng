import 'package:badmintoon/routers/index.dart';
import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final _bdRouter = BdRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _bdRouter.config(),
      title: 'Badmintoon',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: BdColors.primary),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            // Add width condition of Web
            if (constraints.maxWidth > 600) {
              return Scaffold(
                body: Center(
                  child: Text(
                    'Maaf, website ini hanya bisa diakses melalui handphone',
                  ),
                ),
              );
            } else {
              return child ?? const SizedBox.shrink();
            }
          },
        );
      },
    );
  }
}
