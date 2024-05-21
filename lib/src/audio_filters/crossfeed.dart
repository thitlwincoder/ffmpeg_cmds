import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply headphone crossfeed filter.
///
/// Crossfeed is the process of blending the left and right channels of stereo audio recording. It is mainly used to reduce extreme stereo separation of low frequencies.
///
/// The intent is to produce more speaker like sound to the listener.
///
/// The filter accepts the following options:
class Crossfeed extends Filter {
  /// Crossfeed
  Crossfeed({
    this.strength,
    this.range,
    this.slope,
    this.levelIn,
    this.levelOut,
    this.blockSize,
  });

  /// Set strength of crossfeed. Default is 0.2. Allowed range is from 0 to 1. This sets gain of low shelf filter for side part of stereo image. Default is -6dB. Max allowed is -30db when strength is set to 1.
  Object? strength;

  /// Set soundstage wideness. Default is 0.5. Allowed range is from 0 to 1. This sets cut off frequency of low shelf filter. Default is cut off near 1550 Hz. With range set to 1 cut off frequency is set to 2100 Hz.
  Object? range;

  /// Set curve slope of low shelf filter. Default is 0.5. Allowed range is from 0.01 to 1.
  Object? slope;

  /// Set input gain. Default is 0.9.
  Object? levelIn;

  /// Set output gain. Default is 1.
  Object? levelOut;

  /// Set block size used for reverse IIR processing. If this value is set to high enough value (higher than impulse response length truncated when reaches near zero values) filtering will become linear phase otherwise if not big enough it will just produce nasty artifacts./// Note that filter delay will be exactly this many samples when set to non-zero value.
  Object? blockSize;

  @override
  String get name => 'crossfeed';

  @override
  Map<String, dynamic> get options => {
        'strength': strength,
        'range': range,
        'slope': slope,
        'level_in': levelIn,
        'level_out': levelOut,
        'block_size': blockSize,
      };
}
