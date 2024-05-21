import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Convert video to gray using custom color filter.
///
/// A description of the accepted options follows.
class Monochrome extends Filter {
  /// Monochrome
  Monochrome({
    this.cb,
    this.cr,
    this.size,
    this.high,
  });

  /// Set the chroma blue spot. Allowed range is from -1 to 1. Default value is 0.
  Object? cb;

  /// Set the chroma red spot. Allowed range is from -1 to 1. Default value is 0.
  Object? cr;

  /// Set the color filter size. Allowed range is from .1 to 10. Default value is 1.
  Object? size;

  /// Set the highlights strength. Allowed range is from 0 to 1. Default value is 0.
  Object? high;

  @override
  String get name => 'monochrome';

  @override
  Map<String, dynamic> get options =>
      {'cb': cb, 'cr': cr, 'size': size, 'high': high};
}
