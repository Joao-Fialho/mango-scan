import 'package:flutter_modular/flutter_modular.dart';
import 'package:mango_staff/src/presenter/pages/inicial_page.dart';
import 'package:mango_staff/src/presenter/pages/pocs_page.dart';
import 'package:mango_staff/src/presenter/pages/series_page.dart';
import 'package:mango_staff/src/presenter/pages/user_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => const InicialPage()),
        Bind((i) => const UserPage()),
        Bind((i) => const SeriesPage()),
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
    ChildRoute('/pocs',
        child: (context, args) => const PocsPage(),
        transition: TransitionType.noTransition),
  ];
}
