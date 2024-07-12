class Singleton {
  static Singleton? _instance;

  Singleton._internal() {
    print('Private Constructor ran');
  }

  static Singleton get getInstance {
    _instance = _instance ?? Singleton._internal();
    return _instance!;
  }
}
