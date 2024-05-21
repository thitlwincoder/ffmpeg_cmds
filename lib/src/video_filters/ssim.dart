import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Obtain the SSIM (Structural SImilarity Metric) between two input videos.
///
/// This filter takes in input two input videos, the first input is considered the "main" source and is passed unchanged to the output. The second input is used as a "reference" video for computing the SSIM.
///
/// Both video inputs must have the same resolution and pixel format for this filter to work correctly. Also it assumes that both inputs have the same number of frames, which are compared one by one.
///
/// The filter stores the calculated SSIM of each frame.
///
/// The description of the accepted parameters follows.
///
/// A description of each shown parameter follows:
class Ssim extends Filter {
  /// Ssim
  Ssim({
    this.statsFile,
    this.f,
    this.n,
    this.Y,
    this.U,
    this.V,
    this.R,
    this.G,
    this.B,
    this.all,
    this.dB,
  });

  /// If specified the filter will use the named file to save the SSIM of each individual frame. When filename equals "-" the data is sent to standard output.
  Object? statsFile, f;

  /// sequential number of the input frame, starting from 1
  Object? n;

  /// SSIM of the compared frames for the component specified by the suffix.
  Object? Y, u, v, r, g, b;

  /// SSIM of the compared frames for the whole frame.
  Object? all;

  /// Same as above but in dB representation.
  Object? dB;

  @override
  String get name => 'ssim';

  @override
  Map<String, dynamic> get options => {
        'stats_file': statsFile,
        'f': f,
        'n': n,
        'Y': Y,
        'U': U,
        'V': V,
        'R': R,
        'G': G,
        'B': B,
        'All': all,
        'dB': dB,
      };
}
