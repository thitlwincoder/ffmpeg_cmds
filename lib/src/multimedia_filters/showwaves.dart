import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Convert input audio to a video output, representing the samples waves.
///
/// The filter accepts the following options:
class Showwaves extends Filter {
  /// Showwaves
  Showwaves({
    this.size,
    this.s,
    this.mode,
    this.n,
    this.rate,
    this.r,
    this.splitChannels,
    this.colors,
    this.scale,
    this.draw,
  });

  /// Specify the video size for the output. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax). Default value is `600x240`.
  Object? size, s;

  /// Set display mode./// Available values are:
  /// - `point` Draw a point for each sample.
  /// - `line` Draw a vertical line for each sample.
  /// - `p2p` Draw a point for each sample and a line between them.
  /// - `cline` Draw a centered vertical line for each sample.

  /// Default value is `point`.
  Object? mode;

  /// Set the number of samples which are printed on the same column. A larger value will decrease the frame rate. Must be a positive integer. This option can be set only if the value for rate is not explicitly specified.
  Object? n;

  /// Set the (approximate) output frame rate. This is done by setting the option n. Default value is "25".
  Object? rate, r;

  /// Set if channels should be drawn separately or overlap. Default value is 0.
  Object? splitChannels;

  /// Set colors separated by ’|’ which are going to be used for drawing of each channel.
  Object? colors;

  /// Set amplitude scale./// Available values are:
  /// - `lin` Linear.
  /// - `log` Logarithmic.
  /// - `sqrt` Square root.
  /// - `cbrt` Cubic root.

  /// Default is linear.
  Object? scale;

  /// Set the draw mode. This is mostly useful to set for high n./// Available values are:
  /// - `scale` Scale pixel values for each drawn sample.
  /// - `full` Draw every sample directly.

  /// Default value is `scale`.
  Object? draw;

  @override
  String get name => 'showwaves';

  @override
  Map<String, dynamic> get options => {
        'size': size,
        's': s,
        'mode': mode,
        'n': n,
        'rate': rate,
        'r': r,
        'split_channels': splitChannels,
        'colors': colors,
        'scale': scale,
        'draw': draw,
      };
}
