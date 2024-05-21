import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Convert input audio to a video output, representing the audio vector scope.
///
/// The filter is used to measure the difference between channels of stereo audio stream. A monaural signal, consisting of identical left and right signal, results in straight vertical line. Any stereo separation is visible as a deviation from this line, creating a Lissajous figure. If the straight (or deviation from it) but horizontal line appears this indicates that the left and right channels are out of phase.
///
/// The filter accepts the following options:
class Avectorscope extends Filter {
  /// Avectorscope
  Avectorscope({
    this.mode,
    this.m,
    this.size,
    this.s,
    this.rate,
    this.r,
    this.rc,
    this.gc,
    this.bc,
    this.ac,
    this.rf,
    this.gf,
    this.bf,
    this.af,
    this.zoom,
    this.draw,
    this.scale,
    this.swap,
    this.mirror,
  });

  /// Set the vectorscope mode./// Available values are:
  /// - `lissajous` Lissajous rotated by 45 degrees.
  /// - `lissajous_xy` Same as above but not rotated.
  /// - `polar` Shape resembling half of circle.

  /// Default value is ‘/// lissajous’.
  Object? mode, m;

  /// Set the video size for the output. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax). Default value is `400x400`.
  Object? size, s;

  /// Set the output frame rate. Default value is `25`.
  Object? rate, r;

  /// Specify the red, green, blue and alpha contrast. Default values are `40`, `160`, `80` and `255`. Allowed range is `\[0, 255\]`.
  Object? rc;

  /// Specify the red, green, blue and alpha fade. Default values are `15`, `10`, `5` and `5`. Allowed range is `\[0, 255\]`.
  Object? gc;

  /// Set the zoom factor. Default value is `1`. Allowed range is `\[0, 10\]`. Values lower than 1 will auto adjust zoom factor to maximal possible value.
  Object? bc;

  /// Set the vectorscope drawing mode./// Available values are:
  /// - `dot` Draw dot for each sample.
  /// - `line` Draw line between previous and current sample.
  /// - `aaline` Draw anti-aliased line between previous and current sample.

  /// Default value is ‘/// dot’.
  Object? ac;

  /// Specify amplitude scale of audio samples./// Available values are:
  /// - `lin` Linear.
  /// - `sqrt` Square root.
  /// - `cbrt` Cubic root.
  /// - `log` Logarithmic.
  Object? rf;

  /// Swap left channel axis with right channel axis.
  Object? gf;

  /// Mirror axis.
  /// - `none` No mirror.
  /// - `x` Mirror only x axis.
  /// - `y` Mirror only y axis.
  /// - `xy` Mirror both axis.
  Object? bf;

  Object? af;

  Object? zoom;

  Object? draw;

  Object? scale;

  Object? swap;

  Object? mirror;

  @override
  String get name => 'avectorscope';

  @override
  Map<String, dynamic> get options => {
        'mode': mode,
        'm': m,
        'size': size,
        's': s,
        'rate': rate,
        'r': r,
        'rc': rc,
        'gc': gc,
        'bc': bc,
        'ac': ac,
        'rf': rf,
        'gf': gf,
        'bf': bf,
        'af': af,
        'zoom': zoom,
        'draw': draw,
        'scale': scale,
        'swap': swap,
        'mirror': mirror,
      };
}
