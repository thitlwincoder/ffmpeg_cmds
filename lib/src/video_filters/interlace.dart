import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Simple interlacing filter from progressive contents. This interleaves upper (or lower) lines from odd frames with lower (or upper) lines from even frames, halving the frame rate and preserving image height.
///
/// It accepts the following optional parameters:
class Interlace extends Filter {
  /// Interlace
  Interlace({
    this.scan,
    this.lowpass,
  });

  /// This determines whether the interlaced frame is taken from the even (tff - default) or odd (bff) lines of the progressive frame.
  Object? scan;

  /// Vertical lowpass filter to avoid twitter interlacing and reduce moire patterns.
  /// - `0, off` Disable vertical lowpass filter
  /// - `1, linear` Enable linear filter (default)
  /// - `2, complex` Enable complex filter. This will slightly less reduce twitter and moire but better retain detail and subjective sharpness impression.
  Object? lowpass;

  @override
  String get name => 'interlace';

  @override
  Map<String, dynamic> get options => {'scan': scan, 'lowpass': lowpass};
}
