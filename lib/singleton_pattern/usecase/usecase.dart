// State management e.g
import 'package:http/http.dart' as http;
class ThemeManager {
  static final ThemeManager _instance = ThemeManager._privateConstructor();

  bool isDarkMode = false;

  ThemeManager._privateConstructor();

  factory ThemeManager() {
    return _instance;
  }

  void toggleTheme() {
    isDarkMode = !isDarkMode;
    // Notify listeners or rebuild UI
  }
}


class ApiService {
  static final ApiService _instance = ApiService._privateConstructor();

  ApiService._privateConstructor(){
    print("Api service created");
  }

  factory ApiService() {
    return _instance;
  }

  Future<void> fetchData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    print(response.body);
  }
}

class Database {}

class DatabaseManager {
  static final DatabaseManager _instance =
      DatabaseManager._privateConstructor();
  Database? _database;

  DatabaseManager._privateConstructor();

  factory DatabaseManager() {
    return _instance;
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await _initDatabase();
    }
    return _database!;
  }

  Future<Database?> _initDatabase() async {
    // Initialize the database connection
  }
}
