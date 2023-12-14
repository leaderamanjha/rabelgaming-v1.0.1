import 'package:rabelgaming/presentation/register_screen/register_screen.dart';
import 'package:rabelgaming/presentation/register_screen/binding/register_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String registerScreen = '/register_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    )
  ];
}
