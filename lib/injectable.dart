import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:calculator/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false
)
void configureDependencies(String environment) => $initGetIt(
    getIt,
    environment: environment
);

class Env {
  static const String DEV = 'dev';
  static const String PROD = 'prod';
}