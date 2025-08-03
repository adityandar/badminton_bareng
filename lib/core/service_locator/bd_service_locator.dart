import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/domain/domain.dart';

final GetIt getIt = GetIt.instance;

class BdServiceLocator {
  static void init() {
    _initUsecases();
  }

  static void _initUsecases() {
    getIt.registerLazySingleton(GameplayUsecase.new);
  }
}
