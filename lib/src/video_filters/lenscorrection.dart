import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Correct radial lens distortion
///
/// This filter can be used to correct for radial distortion as can result from the use of wide angle lenses, and thereby re-rectify the image. To find the right parameters one can use tools available for example as part of opencv or simply trial-and-error. To use opencv use the calibration sample (under samples/cpp) from the opencv sources and extract the k1 and k2 coefficients from the resulting matrix.
///
/// Note that effectively the same filter is available in the open-source tools Krita and Digikam from the KDE project.
class Lenscorrection extends Filter {
  /// Lenscorrection
  Lenscorrection();

  @override
  String get name => 'lenscorrection';

  @override
  Map<String, dynamic> get options => {};
}
