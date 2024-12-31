import 'package:get/get.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class AppRoutes {
  static List<GetPage<dynamic>> appRoutes() {
    return [
      _getPage(
        routeName: RoutesNames.kMainBottomNavScreen,
        page: () => const MainBottomNavScreen(),
      ),
      _getPage(
        routeName: RoutesNames.kHomeScreen,
        page: () => const HomeScreen(),
      ),
      _getPage(
        routeName: RoutesNames.kAssignment2Screen,
        page: () => Assignment2Screen(),
      ),
      _getPage(
        routeName: RoutesNames.kAssignment3Screen,
        page: () => Assignment3Screen(),
      ),
      _getPage(
        routeName: RoutesNames.kUserProfileScreen,
        page: () => const UserProfileScreen(),
      ),
    ];
  }

  static GetPage<dynamic> _getPage({
    required String routeName,
    required GetPageBuilder page,
  }) {
    return GetPage(
      name: routeName,
      page: page,
      transition: Transition.leftToRightWithFade,
    );
  }
}
