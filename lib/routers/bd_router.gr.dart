// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:badmintoon/features/input_players/input_player_page.dart'
    as _i1;
import 'package:badmintoon/features/main/main_page.dart' as _i2;

/// generated route for
/// [_i1.InputPlayerPage]
class InputPlayerRoute extends _i3.PageRouteInfo<void> {
  const InputPlayerRoute({List<_i3.PageRouteInfo>? children})
    : super(InputPlayerRoute.name, initialChildren: children);

  static const String name = 'InputPlayerRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.InputPlayerPage();
    },
  );
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i3.PageRouteInfo<void> {
  const MainRoute({List<_i3.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.MainPage();
    },
  );
}
