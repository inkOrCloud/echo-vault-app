class AppDatabase {
  bool _isOpen = false;

  bool get isOpen => _isOpen;

  factory AppDatabase.inMemory() => AppDatabase._();

  AppDatabase._();

  Future<void> initialize() async {
    _isOpen = true;
  }

  Future<void> close() async {
    _isOpen = false;
  }
}
