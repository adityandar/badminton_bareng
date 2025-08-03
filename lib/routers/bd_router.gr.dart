// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:badmintoon/domain/domain.dart' as _i7;
import 'package:badmintoon/features/create_session/pages/create_session_page.dart'
    as _i1;
import 'package:badmintoon/features/input_players/input_player_page.dart'
    as _i2;
import 'package:badmintoon/features/main/main_page.dart' as _i3;
import 'package:badmintoon/features/match/pages/match_page.dart' as _i4;
import 'package:flutter/material.dart' as _i6;

/// generated route for
/// [_i1.CreateSessionPage]
class CreateSessionRoute extends _i5.PageRouteInfo<void> {
  const CreateSessionRoute({List<_i5.PageRouteInfo>? children})
    : super(CreateSessionRoute.name, initialChildren: children);

  static const String name = 'CreateSessionRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.CreateSessionPage();
    },
  );
}

/// generated route for
/// [_i2.InputPlayerPage]
class InputPlayerRoute extends _i5.PageRouteInfo<InputPlayerRouteArgs> {
  InputPlayerRoute({
    _i6.Key? key,
    required String gameplayName,
    required _i7.MatchType matchType,
    required _i7.GameMode gameMode,
    List<_i5.PageRouteInfo>? children,
  }) : super(
         InputPlayerRoute.name,
         args: InputPlayerRouteArgs(
           key: key,
           gameplayName: gameplayName,
           matchType: matchType,
           gameMode: gameMode,
         ),
         initialChildren: children,
       );

  static const String name = 'InputPlayerRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<InputPlayerRouteArgs>();
      return _i2.InputPlayerPage(
        key: args.key,
        gameplayName: args.gameplayName,
        matchType: args.matchType,
        gameMode: args.gameMode,
      );
    },
  );
}

class InputPlayerRouteArgs {
  const InputPlayerRouteArgs({
    this.key,
    required this.gameplayName,
    required this.matchType,
    required this.gameMode,
  });

  final _i6.Key? key;

  final String gameplayName;

  final _i7.MatchType matchType;

  final _i7.GameMode gameMode;

  @override
  String toString() {
    return 'InputPlayerRouteArgs{key: $key, gameplayName: $gameplayName, matchType: $matchType, gameMode: $gameMode}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! InputPlayerRouteArgs) return false;
    return key == other.key &&
        gameplayName == other.gameplayName &&
        matchType == other.matchType &&
        gameMode == other.gameMode;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      gameplayName.hashCode ^
      matchType.hashCode ^
      gameMode.hashCode;
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.MainPage();
    },
  );
}

/// generated route for
/// [_i4.MatchPage]
class MatchRoute extends _i5.PageRouteInfo<void> {
  const MatchRoute({List<_i5.PageRouteInfo>? children})
    : super(MatchRoute.name, initialChildren: children);

  static const String name = 'MatchRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.MatchPage();
    },
  );
}
