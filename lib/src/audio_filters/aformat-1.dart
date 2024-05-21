import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Set output format constraints for the input audio. The framework will negotiate the most appropriate format to minimize conversions.
///
/// It accepts the following parameters:
///
/// If a parameter is omitted, all values are allowed.
///
/// Force the output to either unsigned 8-bit or signed 16-bit stereo
class Aformat1 extends Filter {
  /// Aformat1
  Aformat1({
    this.sampleFmts,
    this.f,
    this.sampleRates,
    this.r,
    this.channelLayouts,
    this.cl,
  });

  Object? sampleFmts, f;

  Object? sampleRates, r;

  Object? channelLayouts, cl;

  @override
  String get name => 'aformat-1';

  @override
  Map<String, dynamic> get options => {
        'sample_fmts': sampleFmts,
        'f': f,
        'sample_rates': sampleRates,
        'r': r,
        'channel_layouts': channelLayouts,
        'cl': cl,
      };
}
