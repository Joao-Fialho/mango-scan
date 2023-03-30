import 'package:flutter_modular/flutter_modular.dart';
import 'package:mango_staff/pages/inicial_page.dart';
import 'package:mango_staff/pages/series_page.dart';
import 'package:mango_staff/pages/user_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => InicialPage()),
        Bind((i) => UserPage()),
        Bind((i) => SeriesPage()),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (context, args) => const InicialPage(),
        transition: TransitionType.noTransition),
    ChildRoute('/user',
        child: (context, args) => const UserPage(),
        transition: TransitionType.noTransition),
    ChildRoute('/series',
        child: (context, args) => const SeriesPage(),
        transition: TransitionType.noTransition),

    // ModuleRoute('/dash', module: DashboardModule()),
  ];
}
