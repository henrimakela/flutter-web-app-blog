import 'package:flutter_app_for_blog_post/services/navigation_service.dart';
import 'package:get_it/get_it.dart';


GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}