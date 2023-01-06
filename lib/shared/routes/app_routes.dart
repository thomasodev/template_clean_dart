import '../../presentation/pages/home_page.dart';

abstract class AppRoutes {
  AppRoutes._();

  static final Map<String, HomePage Function(dynamic)> routes = {
    HomePage.screenName: (_) => const HomePage(),
  };
}
