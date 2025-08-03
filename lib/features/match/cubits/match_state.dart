import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/domain/domain.dart';

part 'match_state.freezed.dart';

@freezed
class MatchState with _$MatchState {
  MatchState({required this.match});

  @override
  final MatchEntity? match;
}
