import 'package:get_it/get_it.dart';
import 'package:sex_shop_web/helpers/widgets/routers/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}
