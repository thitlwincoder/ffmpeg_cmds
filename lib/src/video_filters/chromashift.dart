import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Shift chroma pixels horizontally and/or vertically.
///
/// The filter accepts the following options:
class Chromashift extends Filter {
  /// Chromashift
  Chromashift({
    this.cbh,
    this.cbv,
    this.crh,
    this.crv,
    this.edge,
  });

  /// Set amount to shift chroma-blue horizontally.
  Object? cbh;

  /// Set amount to shift chroma-blue vertically.
  Object? cbv;

  /// Set amount to shift chroma-red horizontally.
  Object? crh;

  /// Set amount to shift chroma-red vertically.
  Object? crv;

  /// Set edge mode, can be smear, default, or warp.
  Object? edge;

  @override
  String get name => 'chromashift';

  @override
  Map<String, dynamic> get options =>
      {'cbh': cbh, 'cbv': cbv, 'crh': crh, 'crv': crv, 'edge': edge};
}
