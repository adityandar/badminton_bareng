import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/routers/bd_router.gr.dart';

@AutoRouterConfig()
class BdRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: MainRoute.page, initial: true),
    AutoRoute(page: InputPlayerRoute.page),
    AutoRoute(page: MatchRoute.page),
  ];
}
