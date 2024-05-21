import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Convert input audio to a video output representing frequency spectrum logarithmically using Brown-Puckette constant Q transform algorithm with direct frequency domain coefficient calculation (but the transform itself is not really constant Q, instead the Q factor is actually variable/clamped), with musical tone scale, from E0 to D#10.
///
/// The filter accepts the following options:
class Showcqt extends Filter {
  /// Showcqt
  Showcqt({
    this.size,
    this.s,
    this.fps,
    this.rate,
    this.r,
    this.barH,
    this.axisH,
    this.sonoH,
    this.fullhd,
    this.sonoV,
    this.volume,
    this.barV,
    this.volume2,
    this.sonoG,
    this.gamma,
    this.barG,
    this.gamma2,
    this.barT,
    this.timeclamp,
    this.tc,
    this.attack,
    this.basefreq,
    this.endfreq,
    this.coeffclamp,
    this.tlength,
    this.count,
    this.fcount,
    this.fontfile,
    this.font,
    this.fontcolor,
    this.axisfile,
    this.axis,
    this.text,
    this.csp,
    this.cscheme,
  });

  /// Specify the video size for the output. It must be even. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax). Default value is `1920x1080`.
  Object? size, s;

  /// Set the output frame rate. Default value is `25`.
  Object? fps, rate, r;

  /// Set the bargraph height. It must be even. Default value is `-1` which computes the bargraph height automatically.
  Object? barH;

  /// Set the axis height. It must be even. Default value is `-1` which computes the axis height automatically.
  Object? axisH;

  /// Set the sonogram height. It must be even. Default value is `-1` which computes the sonogram height automatically.
  Object? sonoH;

  /// Set the fullhd resolution. This option is deprecated, use size, s instead. Default value is `1`.
  Object? fullhd;

  /// Specify the sonogram volume expression. It can contain variables:
  /// - `bar_v` the bar_v evaluated expression
  /// - `frequency, freq, f` the frequency where it is evaluated
  /// - `timeclamp, tc` the value of timeclamp option

  /// and functions:
  /// - `a_weighting(f)` A-weighting of equal loudness
  /// - `b_weighting(f)` B-weighting of equal loudness
  /// - `c_weighting(f)` C-weighting of equal loudness.

  /// Default value is `16`.
  Object? sonoV, volume;

  /// Specify the bargraph volume expression. It can contain variables:
  /// - `sono_v` the sono_v evaluated expression
  /// - `frequency, freq, f` the frequency where it is evaluated
  /// - `timeclamp, tc` the value of timeclamp option

  /// and functions:
  /// - `a_weighting(f)` A-weighting of equal loudness
  /// - `b_weighting(f)` B-weighting of equal loudness
  /// - `c_weighting(f)` C-weighting of equal loudness.

  /// Default value is `sono_v`.
  Object? barV, volume2;

  /// Specify the sonogram gamma. Lower gamma makes the spectrum more contrast, higher gamma makes the spectrum having more range. Default value is `3`. Acceptable range is `\[1, 7\]`.
  Object? sonoG, gamma;

  /// Specify the bargraph gamma. Default value is `1`. Acceptable range is `\[1, 7\]`.
  Object? barG, gamma2;

  /// Specify the bargraph transparency level. Lower value makes the bargraph sharper. Default value is `1`. Acceptable range is `\[0, 1\]`.
  Object? barT;

  /// Specify the transform timeclamp. At low frequency, there is trade-off between accuracy in time domain and frequency domain. If timeclamp is lower, event in time domain is represented more accurately (such as fast bass drum), otherwise event in frequency domain is represented more accurately (such as bass guitar). Acceptable range is `\[0.002, 1\]`. Default value is `0.17`.
  Object? timeclamp, tc;

  /// Set attack time in seconds. The default is `0` (disabled). Otherwise, it limits future samples by applying asymmetric windowing in time domain, useful when low latency is required. Accepted range is `\[0, 1\]`.
  Object? attack;

  /// Specify the transform base frequency. Default value is `20.01523126408007475`, which is frequency 50 cents below E0. Acceptable range is `\[10, 100000\]`.
  Object? basefreq;

  /// Specify the transform end frequency. Default value is `20495.59681441799654`, which is frequency 50 cents above D#10. Acceptable range is `\[10, 100000\]`.
  Object? endfreq;

  /// This option is deprecated and ignored.
  Object? coeffclamp;

  /// Specify the transform length in time domain. Use this option to control accuracy trade-off between time domain and frequency domain at every frequency sample. It can contain variables:
  /// - `frequency, freq, f` the frequency where it is evaluated
  /// - `timeclamp, tc` the value of timeclamp option.

  /// Default value is `384\*tc/(384+tc\*f)`.
  Object? tlength;

  /// Specify the transform count for every video frame. Default value is `6`. Acceptable range is `\[1, 30\]`.
  Object? count;

  /// Specify the transform count for every single pixel. Default value is `0`, which makes it computed automatically. Acceptable range is `\[0, 10\]`.
  Object? fcount;

  /// Specify font file for use with freetype to draw the axis. If not specified, use embedded font. Note that drawing with font file or embedded font is not implemented with custom basefreq and endfreq, use axisfile option instead.
  Object? fontfile;

  /// Specify fontconfig pattern. This has lower priority than fontfile. The `:` in the pattern may be replaced by `|` to avoid unnecessary escaping.
  Object? font;

  /// Specify font color expression. This is arithmetic expression that should return integer value 0xRRGGBB. It can contain variables:
  /// - `frequency, freq, f` the frequency where it is evaluated
  /// - `timeclamp, tc` the value of timeclamp option

  /// and functions:
  /// - `midi(f)` midi number of frequency f, some midi numbers: E0(16), C1(24), C2(36), A4(69)
  /// - `r(x), g(x), b(x)` red, green, and blue value of intensity x.

  /// Default value is `st(0, (midi(f)-59.5)/12); st(1, if(between(ld(0),0,1), 0.5-0.5\*cos(2\*PI*ld(0)), 0)); r(1-ld(1)) + b(ld(1))`.
  Object? fontcolor;

  /// Specify image file to draw the axis. This option override fontfile and fontcolor option.
  Object? axisfile;

  /// Enable/disable drawing text to the axis. If it is set to `0`, drawing to the axis is disabled, ignoring fontfile and axisfile option. Default value is `1`.
  Object? axis, text;

  /// Set colorspace. The accepted values are:
  /// - `unspecified` Unspecified (default)
  /// - `bt709` BT.709
  /// - `fcc` FCC
  /// - `bt470bg` BT.470BG or BT.601-6 625
  /// - `smpte170m` SMPTE-170M or BT.601-6 525
  /// - `smpte240m` SMPTE-240M
  /// - `bt2020ncl` BT.2020 with non-constant luminance
  Object? csp;

  /// Set spectrogram color scheme. This is list of floating point values with format `left\_r|left\_g|left\_b|right\_r|right\_g|right\_b`. The default is `1|0.5|0|0|0.5|1`.
  Object? cscheme;

  @override
  String get name => 'showcqt';

  @override
  Map<String, dynamic> get options => {
        'size': size,
        's': s,
        'fps': fps,
        'rate': rate,
        'r': r,
        'bar_h': barH,
        'axis_h': axisH,
        'sono_h': sonoH,
        'fullhd': fullhd,
        'sono_v': sonoV,
        'volume': volume,
        'bar_v': barV,
        'volume2': volume2,
        'sono_g': sonoG,
        'gamma': gamma,
        'bar_g': barG,
        'gamma2': gamma2,
        'bar_t': barT,
        'timeclamp': timeclamp,
        'tc': tc,
        'attack': attack,
        'basefreq': basefreq,
        'endfreq': endfreq,
        'coeffclamp': coeffclamp,
        'tlength': tlength,
        'count': count,
        'fcount': fcount,
        'fontfile': fontfile,
        'font': font,
        'fontcolor': fontcolor,
        'axisfile': axisfile,
        'axis': axis,
        'text': text,
        'csp': csp,
        'cscheme': cscheme,
      };
}
