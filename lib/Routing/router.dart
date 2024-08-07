import 'package:go_router/go_router.dart';
import 'package:plant_app/Views/Home/home_page.dart';
import 'package:plant_app/Widgets/scaffold.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>const CustomScaffold(child: HomeView()),
    ),
  ],
);
