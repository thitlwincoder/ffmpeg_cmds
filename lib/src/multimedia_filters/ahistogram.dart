import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Convert input audio to a video output, displaying the volume histogram.
///
/// The filter accepts the following options:
class Ahistogram extends Filter {
  /// Ahistogram
  Ahistogram({
    this.dmode,
    this.rate,
    this.r,
    this.size,
    this.s,
    this.scale,
    this.ascale,
    this.acount,
    this.rheight,
    this.slide,
    this.hmode,
  });

  /// Specify how histogram is calculated./// It accepts the following values:
  /// - `single` Use single histogram for all channels.
  /// - `separate` Use separate histogram for each channel.

  /// Default is `single`.
  Object? dmode;

  /// Set frame rate, expressed as number of frames per second. Default value is "25".
  Object? rate, r;

  /// Specify the video size for the output. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax). Default value is `hd720`.
  Object? size, s;

  /// Set display scale./// It accepts the following values:
  /// - `log` logarithmic
  /// - `sqrt` square root
  /// - `cbrt` cubic root
  /// - `lin` linear
  /// - `rlog` reverse logarithmic

  /// Default is `log`.
  Object? scale;

  /// Set amplitude scale./// It accepts the following values:
  /// - `log` logarithmic
  /// - `lin` linear

  /// Default is `log`.
  Object? ascale;

  /// Set how much frames to accumulate in histogram. Default is 1. Setting this to -1 accumulates all frames.
  Object? acount;

  /// Set histogram ratio of window height.
  Object? rheight;

  /// Set sonogram sliding./// It accepts the following values:
  /// - `replace` replace old rows with new ones.
  /// - `scroll` scroll from top to bottom.

  /// Default is `replace`.
  Object? slide;

  /// Set histogram mode./// It accepts the following values:
  /// - `abs` Use absolute values of samples.
  /// - `sign` Use untouched values of samples.

  /// Default is `abs`.
  Object? hmode;

  @override
  String get name => 'ahistogram';

  @override
  Map<String, dynamic> get options => {
        'dmode': dmode,
        'rate': rate,
        'r': r,
        'size': size,
        's': s,
        'scale': scale,
        'ascale': ascale,
        'acount': acount,
        'rheight': rheight,
        'slide': slide,
        'hmode': hmode,
      };
}
