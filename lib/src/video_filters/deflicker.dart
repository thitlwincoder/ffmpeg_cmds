import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Remove temporal frame luminance variations.
///
/// It accepts the following options:
class Deflicker extends Filter {
  /// Deflicker
  Deflicker({
    this.size,
    this.s,
    this.mode,
    this.m,
    this.bypass,
  });

  /// Set moving-average filter size in frames. Default is 5. Allowed range is 2 - 129.
  Object? size, s;

  /// Set averaging mode to smooth temporal luminance variations./// Available values are:
  /// - `am` Arithmetic mean
  /// - `gm` Geometric mean
  /// - `hm` Harmonic mean
  /// - `qm` Quadratic mean
  /// - `cm` Cubic mean
  /// - `pm` Power mean
  /// - `median` Median
  Object? mode, m;

  /// Do not actually modify frame. Useful when one only wants metadata.
  Object? bypass;

  @override
  String get name => 'deflicker';

  @override
  Map<String, dynamic> get options =>
      {'size': size, 's': s, 'mode': mode, 'm': m, 'bypass': bypass};
}
