import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:badminton_bareng/routers/bd_router.gr.dart';

@AutoRouterConfig()
class BdRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: MainRoute.page, initial: true),
    AutoRoute(page: InputPlayerRoute.page),
    AutoRoute(page: MatchRoute.page),
    AutoRoute(page: CreateSessionRoute.page),
    AutoRoute(page: LeaderboardRoute.page),
  ];
}
