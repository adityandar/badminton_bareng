import 'package:badminton_bareng/core/core.dart';
import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory.web,
  );
  BdServiceLocator.init();
  runApp(MainApp());
}
