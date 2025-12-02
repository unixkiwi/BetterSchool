abstract class Setting<T> {
  final String storageKey;
  final T? fallbackValue;

  const Setting({required this.storageKey, this.fallbackValue});

  T getValue();

  Future<void> setValue(T value);
}
