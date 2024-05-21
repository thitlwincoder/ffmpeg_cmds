import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply a 1D LUT to an input video.
///
/// The filter accepts the following options:
class Lut1d extends Filter {
  /// Lut1d
  Lut1d({
    this.file,
    this.interp,
  });

  /// Set the 1D LUT file name./// Currently supported formats:
  /// - `cube` Iridas
  /// - `csp` cineSpace
  Object? file;

  /// Select interpolation mode./// Available values are:
  /// - `nearest` Use values from the nearest defined point.
  /// - `linear` Interpolate values using the linear interpolation.
  /// - `cosine` Interpolate values using the cosine interpolation.
  /// - `cubic` Interpolate values using the cubic interpolation.
  /// - `spline` Interpolate values using the spline interpolation.
  Object? interp;

  @override
  String get name => 'lut1d';

  @override
  Map<String, dynamic> get options => {'file': file, 'interp': interp};
}
