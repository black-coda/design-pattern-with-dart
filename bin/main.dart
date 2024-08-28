
import 'package:design_pattern_with_dart/singleton_pattern/usecase/usecase.dart';

void main(List<String> arguments) {
  // final Singleton instance1 = Singleton();
  // final LazyInitializationSingleton instance2 = LazyInitializationSingleton.instance;

  // final instance3 = LazyInitializationSingleton.instance;

  final ThemeManager manager = ThemeManager();
  print(manager.isDarkMode);
  manager.toggleTheme();
  print(manager.isDarkMode);
  manager.toggleTheme();
  print(manager.isDarkMode);



  //* Api service

  final ApiService apiService = ApiService();
  apiService.fetchData();
}
