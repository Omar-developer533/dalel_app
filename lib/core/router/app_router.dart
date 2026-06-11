import 'package:dalel/featurs/onboarding/presentation/views/on_boarding_one.dart';
import 'package:dalel/featurs/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

const kOnBoardingOne = '/OnBoardingOne';
final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => SplashView()),
    GoRoute(path: kOnBoardingOne, builder: (context, state) => OnBoardingOne()),
  ],
);
