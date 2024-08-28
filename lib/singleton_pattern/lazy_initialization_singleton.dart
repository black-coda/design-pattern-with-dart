class LazyInitializationSingleton {
  /// Lazy initialization delays the creation of the Singleton instance until it is needed. This can be useful if the initialization is resource-intensive or the instance may not be needed during the application's lifetime.
  ///

  // privatized constructor
  LazyInitializationSingleton._(){
    print("lazy initialization singleton created");
  }

  // instance of singleton class
  static LazyInitializationSingleton? _instance;

  // factory constructor returns the single instance
  // factory LazyInitializationSingleton(){
  //   _instance ??= LazyInitializationSingleton._();
  //   return _instance!;
  // }

  static get instance => _instance ??= LazyInitializationSingleton._();
}

class Singleton1 {
  // instance of singleton class
  static Singleton1? _instance;

  // privatized constructor
  Singleton1._internal() {
    print('Instance created');
  }

  factory Singleton1() {
    _instance ??= Singleton1._internal();
    return _instance!;
  }
}
