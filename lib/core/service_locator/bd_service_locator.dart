import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:badminton_bareng/domain/domain.dart';

final GetIt getIt = GetIt.instance;

class BdServiceLocator {
  static void init() {
    _initUsecases();
  }

  static void _initUsecases() {
    getIt
      ..registerLazySingleton(GameplaySessionUsecase.new)
      ..registerLazySingleton(MatchUsecase.new)
      ..registerLazySingleton(PlayerUsecase.new);
  }
}
