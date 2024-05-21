import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Negate (invert) the input video.
///
/// It accepts the following option:
class Negate extends Filter {
  /// Negate
  Negate({
    this.components,
    this.negateAlpha,
  });

  /// Set components to negate./// Available values for components are:
  /// - `y`
  /// - `u`
  /// - `v`
  /// - `a`
  /// - `r`
  /// - `g`
  /// - `b`
  Object? components;

  /// With value 1, it negates the alpha component, if present. Default value is 0.
  Object? negateAlpha;

  @override
  String get name => 'negate';

  @override
  Map<String, dynamic> get options =>
      {'components': components, 'negate_alpha': negateAlpha};
}
