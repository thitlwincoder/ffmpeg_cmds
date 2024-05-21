import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Convert stereo input audio to a video output, representing the spatial relationship between two channels.
///
/// The filter accepts the following options:
class Showspatial extends Filter {
  /// Showspatial
  Showspatial({
    this.size,
    this.s,
    this.winSize,
    this.winFunc,
    this.rate,
    this.r,
  });

  /// Specify the video size for the output. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax). Default value is `512x512`.
  Object? size, s;

  /// Set window size. Allowed range is from 1024 to 65536. Default size is 4096.
  Object? winSize;

  /// Set window function./// It accepts the following values:
  /// - `rect`
  /// - `bartlett`
  /// - `hann`
  /// - `hanning`
  /// - `hamming`
  /// - `blackman`
  /// - `welch`
  /// - `flattop`
  /// - `bharris`
  /// - `bnuttall`
  /// - `bhann`
  /// - `sine`
  /// - `nuttall`
  /// - `lanczos`
  /// - `gauss`
  /// - `tukey`
  /// - `dolph`
  /// - `cauchy`
  /// - `parzen`
  /// - `poisson`
  /// - `bohman`
  /// - `kaiser`
  /// Default value is `hann`.
  Object? winFunc;

  /// Set output framerate.
  Object? rate, r;

  @override
  String get name => 'showspatial';

  @override
  Map<String, dynamic> get options => {
        'size': size,
        's': s,
        'win_size': winSize,
        'win_func': winFunc,
        'rate': rate,
        'r': r,
      };
}
