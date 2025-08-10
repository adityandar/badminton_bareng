import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:badminton_bareng/domain/domain.dart';
import 'package:badminton_bareng/gen/gen.dart';
import 'package:badminton_bareng/shared/shared.dart';
import 'package:flutter/material.dart';

import '../../cubits/index.dart';
import 'index.dart';

class LeaderboardScreenshotView extends StatefulWidget {
  const LeaderboardScreenshotView({
    super.key,
    required this.screenshotController,
  });

  final ScreenshotController screenshotController;

  @override
  State<LeaderboardScreenshotView> createState() =>
      _LeaderboardScreenshotViewState();
}

class _LeaderboardScreenshotViewState extends State<LeaderboardScreenshotView> {
  void _updateMaxItem(
    BuildContext context, {
    required double tileHeight,
    required double maxHeight,
  }) {
    final maxItem = tileHeight != 0 ? maxHeight ~/ tileHeight : -1;
    if (maxItem == -1) {
      return;
    }

    context.read<LeaderboardCubit>().onScreenshotMaxItemChanged(
      maxItem: maxItem,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BdWrapperSizeBuilder(
      benchmarkWidget:
          (key) => Column(
            key: key,
            mainAxisSize: MainAxisSize.min,
            children: [
              PlayerRankingItemWidget(number: 0, player: PlayerEntity.mock()),
              Divider(),
            ],
          ),
      builder: (context, size) {
        return BlocBuilder<LeaderboardCubit, LeaderboardState>(
          builder: (context, state) {
            final sessionName = state.sessionName;
            final topThreePlayers = state.topThreePlayers;
            final listPlayers = state.screenshotListPlayers;
            final otherPlayers = state.screenshotOtherPlayers;

            final topThreePlayersAmount = topThreePlayers.length;
            final screenshotListPlayerAmount = listPlayers.length;
            final otherStartingIndex =
                topThreePlayersAmount + screenshotListPlayerAmount + 1;

            return Opacity(
              opacity: 1,
              child: AspectRatio(
                aspectRatio: 9 / 16,
                child: Screenshot(
                  controller: widget.screenshotController,
                  child: Scaffold(
                    body: Column(
                      children: [
                        Gap(16),
                        Text(
                          'LEADERBOARD $sessionName'.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: BdTStyles.s20w900,
                        ),
                        TopThreeView(topThreePlayers: topThreePlayers),
                        Gap(16),
                        Expanded(
                          child: LayoutBuilder(
                            builder: (context, constraint) {
                              _updateMaxItem(
                                context,
                                tileHeight: size.height,
                                maxHeight: constraint.maxHeight,
                              );
                              if (state.isDataLoading) {
                                return Center(
                                  child: const CircularProgressIndicator(),
                                );
                              }

                              return ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                padding: const EdgeInsets.only(
                                  top: 8,
                                  bottom: 100,
                                ),
                                itemCount: listPlayers.length,
                                itemBuilder: (context, index) {
                                  final player = listPlayers[index];
                                  final number = index + 4;

                                  return PlayerRankingItemWidget(
                                    number: number,
                                    player: player,
                                  );
                                },
                                separatorBuilder: (context, index) => Divider(),
                              );
                            },
                          ),
                        ),

                        Gap(8),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: SizedBox(
                            height: 40,
                            child: Builder(
                              builder: (context) {
                                if (state.isDataLoading) {
                                  return const CircularProgressIndicator();
                                }
                                if (otherPlayers.isEmpty) {
                                  return const SizedBox();
                                }

                                final playersName = otherPlayers
                                    .mapIndexed(
                                      (index, player) =>
                                          '${index + otherStartingIndex}. ${player.name}',
                                    )
                                    .join(', ');

                                return AutoSizeText(
                                  'Lainnya: $playersName',
                                  style: BdTStyles.s10w400,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  minFontSize: 4,
                                  maxLines: 10,
                                );
                              },
                            ),
                          ),
                        ),
                        Gap(8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Powered by BadmintonBareng',
                              style: BdTStyles.s10w600,
                            ),
                            Gap(4),
                            Image.asset(
                              Assets.images.logoBadmintonFilledStroke.path,
                              height: 16,
                            ),
                          ],
                        ),
                        Gap(8),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
