import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  Future<T?> popUntilRootThenReplaceRoute<T extends Object?>(
    PageRouteInfo route, {
    OnNavigationFailure? onFailure,
  }) async {
    router.popUntilRoot();
    return await replaceRoute(route);
  }
}
