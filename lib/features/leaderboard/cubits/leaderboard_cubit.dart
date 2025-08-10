// ignore_for_file: use_build_context_synchronously

import 'package:badmintoon/core/core.dart';
import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/domain/domain.dart';
import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

import 'leaderboard_state.dart';

class LeaderboardCubit extends Cubit<LeaderboardState> {
  LeaderboardCubit() : super(LeaderboardState.initial());

  void onBuild({
    required List<PlayerEntity> allPlayers,
    required bool isOngoing,
    required String sessionName,
  }) {
    final sortedPlayers = getIt<PlayerUsecase>().getTopPlayers(
      playerDatabase: allPlayers,
      limit: null,
    );

    final topThreePlayers = sortedPlayers.take(3).toList();
    final remainingPlayers = sortedPlayers.skip(3).toList();

    emit(
      state.copyWith(
        allPlayers: allPlayers,
        topThreePlayers: topThreePlayers,
        remainingPlayers: remainingPlayers,
        isOngoing: isOngoing,
        sessionName: sessionName,
      ),
    );
  }

  void onScreenshotMaxItemChanged({required int maxItem}) async {
    final screenshotListPlayers = state.remainingPlayers.take(maxItem).toList();
    final screenshotOtherPlayers =
        state.remainingPlayers.skip(maxItem).toList();

    emit(
      state.copyWith(
        screenshotListPlayers: screenshotListPlayers,
        screenshotOtherPlayers: screenshotOtherPlayers,
        isDataLoading: false,
      ),
    );
  }

  void screenshotAndDownload(
    BuildContext context,
    ScreenshotController controller,
  ) async {
    try {
      emit(state.copyWith(isScreenshotLoading: true));
      final pixelRatio = MediaQuery.of(context).devicePixelRatio;

      final result = await controller.capture(pixelRatio: pixelRatio);
      if (result != null) {
        await WebImageDownloader.downloadImageFromUInt8List(
          uInt8List: result,
          name: 'result_leaderboard',
        );
      } else {
        BdToast.error(context, title: 'Gagal mengambil screenshot');
      }
    } catch (e) {
      BdToast.error(
        context,
        title: 'Gagal mengambil screenshot',
        description: e.toString(),
      );
    } finally {
      emit(state.copyWith(isScreenshotLoading: false));
    }
  }
}
