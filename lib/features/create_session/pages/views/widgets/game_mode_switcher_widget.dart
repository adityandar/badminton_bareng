import 'package:badminton_bareng/domain/domain.dart';
import 'package:badminton_bareng/shared/shared.dart';
import 'package:flutter/material.dart';

class GameModeSwitcherWidget extends StatelessWidget {
  const GameModeSwitcherWidget({
    super.key,
    required this.selectedGameMode,
    required this.onGameModeChanged,
  });

  final GameMode? selectedGameMode;
  final void Function(GameMode) onGameModeChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _GameModeSwitcherPartWidget.left(
            gameMode: GameMode.single,
            onTap: () => onGameModeChanged(GameMode.single),
            isSelected: selectedGameMode == GameMode.single,
          ),
        ),
        Expanded(
          child: _GameModeSwitcherPartWidget.right(
            gameMode: GameMode.double,
            onTap: () => onGameModeChanged(GameMode.double),
            isSelected: selectedGameMode == GameMode.double,
          ),
        ),
      ],
    );
  }
}

class _GameModeSwitcherPartWidget extends StatelessWidget {
  const _GameModeSwitcherPartWidget.left({
    required this.gameMode,
    required this.onTap,
    required this.isSelected,
  }) : isLeft = true;

  const _GameModeSwitcherPartWidget.right({
    required this.gameMode,
    required this.onTap,
    required this.isSelected,
  }) : isLeft = false;

  final GameMode gameMode;
  final VoidCallback onTap;
  final bool isSelected;
  final bool isLeft;

  Border _border() => Border(
    top: _activeBorderSide(),
    bottom: _activeBorderSide(),
    left: isLeft ? _activeBorderSide() : BorderSide.none,
    right: isLeft ? BorderSide.none : _activeBorderSide(),
  );

  BorderSide _activeBorderSide() {
    return BorderSide(
      color: gameMode.borderColor(isActive: isSelected),
      width: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BdInkWell(
      onTap: onTap,
      height: 36,
      decoration: BoxDecoration(
        color: gameMode.backgroundColor(isActive: isSelected),
        borderRadius: BorderRadius.horizontal(
          left: isLeft ? Radius.circular(16) : Radius.zero,
          right: isLeft ? Radius.zero : Radius.circular(16),
        ),
        boxShadow: isSelected ? BdShadows.defaultShadows : null,
        border: _border(),
      ),
      child: Center(
        child: Text(
          gameMode.text,
          style: BdTStyles.s14w500.copyWith(
            color: isSelected ? Colors.white : BdColors.darkGrey.withAlpha(60),
            fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
