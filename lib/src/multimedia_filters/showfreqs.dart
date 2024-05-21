import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Convert input audio to video output representing the audio power spectrum. Audio amplitude is on Y-axis while frequency is on X-axis.
///
/// The filter accepts the following options:
class Showfreqs extends Filter {
  /// Showfreqs
  Showfreqs({
    this.size,
    this.s,
    this.rate,
    this.r,
    this.mode,
    this.ascale,
    this.fscale,
    this.winSize,
    this.winFunc,
    this.overlap,
    this.averaging,
    this.colors,
    this.cmode,
    this.minamp,
    this.data,
    this.channels,
  });

  /// Specify size of video. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax). Default is `1024x512`.
  Object? size, s;

  /// Set video rate. Default is `25`.
  Object? rate, r;

  /// Set display mode. This set how each frequency bin will be represented./// It accepts the following values:
  /// - `line`
  /// - `bar`
  /// - `dot`
  /// Default is `bar`.
  Object? mode;

  /// Set amplitude scale./// It accepts the following values:
  /// - `lin` Linear scale.
  /// - `sqrt` Square root scale.
  /// - `cbrt` Cubic root scale.
  /// - `log` Logarithmic scale.

  /// Default is `log`.
  Object? ascale;

  /// Set frequency scale./// It accepts the following values:
  /// - `lin` Linear scale.
  /// - `log` Logarithmic scale.
  /// - `rlog` Reverse logarithmic scale.

  /// Default is `lin`.
  Object? fscale;

  /// Set window size. Allowed range is from 16 to 65536./// Default is `2048`
  Object? winSize;

  /// Set windowing function./// It accepts the following values:
  /// - `rect`
  /// - `bartlett`
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
  /// Default is `hanning`.
  Object? winFunc;

  /// Set window overlap. In range `\[0, 1\]`. Default is `1`, which means optimal overlap for selected window function will be picked.
  Object? overlap;

  /// Set time averaging. Setting this to 0 will display current maximal peaks. Default is `1`, which means time averaging is disabled.
  Object? averaging;

  /// Specify list of colors separated by space or by ’|’ which will be used to draw channel frequencies. Unrecognized or missing colors will be replaced by white color.
  Object? colors;

  /// Set channel display mode./// It accepts the following values:
  /// - `combined`
  /// - `separate`
  /// Default is `combined`.
  Object? cmode;

  /// Set minimum amplitude used in `log` amplitude scaler.
  Object? minamp;

  /// Set data display mode./// It accepts the following values:
  /// - `magnitude`
  /// - `phase`
  /// - `delay`
  /// Default is `magnitude`.
  Object? data;

  /// Set channels to use when processing audio. By default all are processed.
  Object? channels;

  @override
  String get name => 'showfreqs';

  @override
  Map<String, dynamic> get options => {
        'size': size,
        's': s,
        'rate': rate,
        'r': r,
        'mode': mode,
        'ascale': ascale,
        'fscale': fscale,
        'win_size': winSize,
        'win_func': winFunc,
        'overlap': overlap,
        'averaging': averaging,
        'colors': colors,
        'cmode': cmode,
        'minamp': minamp,
        'data': data,
        'channels': channels,
      };
}
