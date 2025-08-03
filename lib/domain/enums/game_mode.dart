import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

enum GameMode {
  single,
  double;

  int get playersPerTeam => switch (this) {
    GameMode.single => 1,
    GameMode.double => 2,
  };

  String get text {
    switch (this) {
      case GameMode.single:
        return 'Single';
      case GameMode.double:
        return 'Double';
    }
  }

  Color backgroundColor({bool isActive = true}) {
    switch (this) {
      case GameMode.single:
        return isActive ? BdColors.vibrantBlue : BdColors.softestBlue;
      case GameMode.double:
        return isActive ? BdColors.vibrantPurple : BdColors.softestPurple;
    }
  }

  Color borderColor({bool isActive = true}) {
    if (isActive) {
      switch (this) {
        case GameMode.single:
          return BdColors.mediumBlue;
        case GameMode.double:
          return BdColors.mediumPurple;
      }
    }

    return Colors.transparent;
  }
}
