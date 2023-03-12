import 'package:consumo_de_api_de_clima/app/ui/home/home_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

abstract class AppPages{

  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomePage()),
  ];
}