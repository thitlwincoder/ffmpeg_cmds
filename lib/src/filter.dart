/// CMD
class Filter {
  /// CMD
  Filter({
    required this.name,
    required this.options,
  });

  /// name
  final String name;

  /// options
  final Map<String, dynamic> options;

  @override
  String toString() {
    options.removeWhere((key, value) => value == null);

    final cmds = options.keys.map((e) => '$e="${options[e]}"').join(':');

    return '$name=$cmds';
  }
}
