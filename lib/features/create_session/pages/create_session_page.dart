import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

import '../cubits/index.dart';
import 'views/index.dart';

@RoutePage()
class CreateSessionPage extends StatelessWidget {
  const CreateSessionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateSessionCubit(),
      child: Scaffold(
        appBar: BdAppBar(title: 'Mulai Permainan'),
        bottomNavigationBar: CreateSessionBottomView(),
        body: CreateSessionBodyView(),
      ),
    );
  }
}
