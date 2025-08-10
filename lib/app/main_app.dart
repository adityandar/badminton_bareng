import 'package:badminton_bareng/core/core.dart';
import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:badminton_bareng/routers/index.dart';
import 'package:badminton_bareng/shared/shared.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final _bdRouter = BdRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GameplayCubit(),
      child: MaterialApp.router(
        routerConfig: _bdRouter.config(),
        title: 'Badminton Bareng',
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
      ),
    );
  }
}
