import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Convert input audio to a single video frame, representing the samples waves.
///
/// The filter accepts the following options:
class Showwavespic extends Filter {
  /// Showwavespic
  Showwavespic({
    this.size,
    this.s,
    this.splitChannels,
    this.colors,
    this.scale,
    this.draw,
    this.filter,
  });

  /// Specify the video size for the output. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax). Default value is `600x240`.
  Object? size, s;

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

  /// Set the draw mode./// Available values are:
  /// - `scale` Scale pixel values for each drawn sample.
  /// - `full` Draw every sample directly.

  /// Default value is `scale`.
  Object? draw;

  /// Set the filter mode./// Available values are:
  /// - `average` Use average samples values for each drawn sample.
  /// - `peak` Use peak samples values for each drawn sample.

  /// Default value is `average`.
  Object? filter;

  @override
  String get name => 'showwavespic';

  @override
  Map<String, dynamic> get options => {
        'size': size,
        's': s,
        'split_channels': splitChannels,
        'colors': colors,
        'scale': scale,
        'draw': draw,
        'filter': filter,
      };
}
