import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply an arbitrary Infinite Impulse Response filter.
///
/// It accepts the following parameters:
///
/// Different coefficients and gains can be provided for every channel, in such case use ’|’ to separate coefficients or gains. Last provided coefficients will be used for all remaining channels.
class Aiir extends Filter {
  /// Aiir
  Aiir({
    this.zeros,
    this.z,
    this.poles,
    this.p,
    this.gains,
    this.k,
    this.dryGain,
    this.wetGain,
    this.format,
    this.f,
    this.process,
    this.r,
    this.precision,
    this.e,
    this.normalize,
    this.n,
    this.mix,
    this.response,
    this.channel,
    this.size,
  });

  Object? zeros, z;

  Object? poles, p;

  Object? gains, k;

  /// Set input gain.
  Object? dryGain;

  /// Set output gain.
  Object? wetGain;

  Object? format, f;

  Object? process, r;

  Object? precision, e;

  Object? normalize, n;

  /// How much to use filtered signal in output. Default is 1. Range is between 0 and 1.
  Object? mix;

  /// Show IR frequency response, magnitude(magenta), phase(green) and group delay(yellow) in additional video stream. By default it is disabled.
  Object? response;

  /// Set for which IR channel to display frequency response. By default is first channel displayed. This option is used only when response is enabled.
  Object? channel;

  /// Set video stream size. This option is used only when response is enabled.
  Object? size;

  @override
  String get name => 'aiir';

  @override
  Map<String, dynamic> get options => {
        'zeros': zeros,
        'z': z,
        'poles': poles,
        'p': p,
        'gains': gains,
        'k': k,
        'dry_gain': dryGain,
        'wet_gain': wetGain,
        'format': format,
        'f': f,
        'process': process,
        'r': r,
        'precision': precision,
        'e': e,
        'normalize': normalize,
        'n': n,
        'mix': mix,
        'response': response,
        'channel': channel,
        'size': size,
      };
}
