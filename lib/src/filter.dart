/// CMD
abstract class Filter {
  /// CMD
  Filter();

  /// name
  String get name;

  /// options
  Map<String, dynamic> get options;

  @override
  String toString() {
    final options = this.options..removeWhere((key, value) => value == null);

    final cmds = options.keys.map((e) => '$e="${options[e]}"').join(':');

    return '$name=$cmds';
  }
}
