import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/domain/domain.dart';
import 'package:badmintoon/gen/gen.dart';
import 'package:badmintoon/shared/shared.dart';
import 'package:badmintoon/utils/utils.dart';
import 'package:flutter/material.dart';

class TopThreeItemWidget extends StatelessWidget {
  const TopThreeItemWidget({
    super.key,
    required this.rank,
    required this.player,
  });

  final int rank;
  final PlayerEntity player;

  String get imagePath {
    switch (rank) {
      case 1:
        return Assets.images.imgFirstWinner.path;
      case 2:
        return Assets.images.imgSecondWinner.path;
      case 3:
        return Assets.images.imgThirdWinner.path;
      default:
        return Assets.images.imgThirdWinner.path;
    }
  }

  RadialGradient get gradient {
    var colors = <Color>[];
    switch (rank) {
      case 1:
        colors = [HexColor('#FFD54F'), HexColor('#FFB300')];
        break;
      case 2:
        colors = [HexColor('#B0BEC5'), HexColor('#78909C')];
        break;
      default:
        colors = [HexColor('#FF8A65'), HexColor('#D84315')];
        break;
    }

    return RadialGradient(
      colors: colors,
      center: Alignment.center,
      radius: 0.85,
      stops: const [0.0, 1.0],
    );
  }

  Color get textColor {
    switch (rank) {
      case 1:
        return HexColor('#4A2C00');
      case 2:
        return HexColor('#F9F9F9');
      default:
        return HexColor('#F9F9F9');
    }
  }

  @override
  Widget build(BuildContext context) {
    final nameParts = player.name.split(' ');
    final firstName = nameParts.firstOrNull ?? '';
    final lastName = nameParts.length > 1 ? nameParts.lastOrNull ?? '' : '';
    final usedName = lastName.isEmpty ? firstName : '$firstName $lastName';

    return Container(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: gradient.colors.first.withValues(alpha: 1),
            blurRadius: 10,
            spreadRadius: 0,
            blurStyle: BlurStyle.outer,
          ),
        ],
        gradient: gradient,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Image.asset(imagePath),
              ),
              Gap(4),
              Text(
                usedName.toTitleCase(),
                maxLines: 2,
                textAlign: TextAlign.center,
                style: BdTStyles.s14w700.copyWith(color: textColor),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          Gap(4),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: BdColors.subtleGreen,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              '${player.wins}W / ${player.losses}L',
              style: BdTStyles.s10w700.copyWith(color: BdColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
