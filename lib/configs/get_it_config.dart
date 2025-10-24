import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:keep_my_notes/configs/get_it_config.config.dart';

final locator = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: false,
  asExtension: true,
)
Future<void> setupDependencies() async => locator.init();
