import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Convert input audio volume to a video output.
///
/// The filter accepts the following options:
class Showvolume extends Filter {
  /// Showvolume
  Showvolume({
    this.rate,
    this.r,
    this.b,
    this.w,
    this.h,
    this.f,
    this.c,
    this.t,
    this.v,
    this.o,
    this.s,
    this.p,
    this.m,
    this.ds,
    this.dm,
    this.dmc,
  });

  /// Set video rate.
  Object? rate, r;

  /// Set border width, allowed range is \[0, 5\]. Default is 1.
  Object? b;

  /// Set channel width, allowed range is \[80, 8192\]. Default is 400.
  Object? w;

  /// Set channel height, allowed range is \[1, 900\]. Default is 20.
  Object? h;

  /// Set fade, allowed range is \[0, 1\]. Default is 0.95.
  Object? f;

  /// Set volume color expression./// The expression can use the following variables:
  /// - `VOLUME` Current max volume of channel in dB.
  /// - `PEAK` Current peak.
  /// - `CHANNEL` Current channel number, starting from 0.
  Object? c;

  /// If set, displays channel names. Default is enabled.
  Object? t;

  /// If set, displays volume values. Default is enabled.
  Object? v;

  /// Set orientation, can be horizontal: `h` or vertical: `v`, default is `h`.
  Object? o;

  /// Set step size, allowed range is \[0, 5\]. Default is 0, which means step is disabled.
  Object? s;

  /// Set background opacity, allowed range is \[0, 1\]. Default is 0.
  Object? p;

  /// Set metering mode, can be peak: `p` or rms: `r`, default is `p`.
  Object? m;

  /// Set display scale, can be linear: `lin` or log: `log`, default is `lin`.
  Object? ds;

  /// In second. If set to > 0., display a line for the max level in the previous seconds. default is disabled: `0.`
  Object? dm;

  /// The color of the max line. Use when `dm` option is set to > 0. default is: `orange`
  Object? dmc;

  @override
  String get name => 'showvolume';

  @override
  Map<String, dynamic> get options => {
        'rate': rate,
        'r': r,
        'b': b,
        'w': w,
        'h': h,
        'f': f,
        'c': c,
        't': t,
        'v': v,
        'o': o,
        's': s,
        'p': p,
        'm': m,
        'ds': ds,
        'dm': dm,
        'dmc': dmc,
      };
}
