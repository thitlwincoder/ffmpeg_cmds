import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Extract color channel components from input video stream into separate grayscale video streams.
///
/// The filter accepts the following option:
class Extractplanes extends Filter {
  /// Extractplanes
  Extractplanes({this.planes});

  /// Set plane(s) to extract./// Available values for planes are:
  /// - `y`
  /// - `u`
  /// - `v`
  /// - `a`
  /// - `r`
  /// - `g`
  /// - `b`
  /// Choosing planes not available in the input will result in an error. That means you cannot select `r`, `g`, `b` planes with `y`, `u`, `v` planes at same time.
  Object? planes;

  @override
  String get name => 'extractplanes';

  @override
  Map<String, dynamic> get options => {'planes': planes};
}
