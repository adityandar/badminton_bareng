import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/domain/domain.dart';

part 'leaderboard_state.freezed.dart';

@freezed
class LeaderboardState with _$LeaderboardState {
  LeaderboardState({
    required this.allPlayers,
    required this.isOngoing,
    required this.topThreePlayers,
    required this.remainingPlayers,
    required this.isDataLoading,
    required this.isScreenshotLoading,
    required this.screenshotListPlayers,
    required this.screenshotOtherPlayers,
    required this.sessionName,
  });

  factory LeaderboardState.initial() => LeaderboardState(
    allPlayers: [],
    isOngoing: false,
    topThreePlayers: [],
    remainingPlayers: [],
    isDataLoading: true,
    isScreenshotLoading: false,
    screenshotListPlayers: [],
    screenshotOtherPlayers: [],
    sessionName: '',
  );

  @override
  final List<PlayerEntity> allPlayers;
  @override
  final bool isOngoing;
  // for UI
  @override
  final List<PlayerEntity> topThreePlayers;
  @override
  final List<PlayerEntity> remainingPlayers;

  // for screenshot
  @override
  final bool isDataLoading;
  @override
  final bool isScreenshotLoading;
  @override
  final List<PlayerEntity> screenshotListPlayers;
  @override
  final List<PlayerEntity> screenshotOtherPlayers;
  @override
  final String sessionName;
}
