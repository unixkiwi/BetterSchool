abstract class Setting<T> {
  final String storageKey;
  final T defaultValue;

  const Setting({required this.storageKey, required this.defaultValue});

  T getValue();

  Future<void> setValue(T value);
}
