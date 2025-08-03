enum GameplaySessionState {
  ongoing,
  finished;

  bool get isOngoing => this == GameplaySessionState.ongoing;
  bool get isFinished => this == GameplaySessionState.finished;
}
