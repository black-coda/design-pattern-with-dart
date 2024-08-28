class Singleton {
  // Private constructor
  Singleton._privateConstructor();

  // The single instance of the class
  static final Singleton _instance = Singleton._privateConstructor();

  // Factory constructor returns the single instance
  factory Singleton() {
    return _instance;
  }

  // Example method
  void someMethod() {
    print("Singleton method called");
  }
}

