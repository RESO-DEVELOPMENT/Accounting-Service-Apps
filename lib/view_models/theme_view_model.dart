import 'package:accounting_service/utils/share_pref.dart';
import 'package:accounting_service/view_models/base_view_model.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/app_constants.dart';

class ThemeViewModel extends BaseViewModel {
  ThemeViewModel() {
    _loadCurrentTheme();
  }
  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;

  void toggleTheme() {
    _darkTheme = !_darkTheme;
    setThemeMode(_darkTheme);
    notifyListeners();
  }

  void _loadCurrentTheme() async {
    _darkTheme = await getThemeMode();
    notifyListeners();
  }
}
