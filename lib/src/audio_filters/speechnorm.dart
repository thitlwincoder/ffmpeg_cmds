import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Speech Normalizer.
///
/// This filter expands or compresses each half-cycle of audio samples (local set of samples all above or all below zero and between two nearest zero crossings) depending on threshold value, so audio reaches target peak value under conditions controlled by below options.
///
/// The filter accepts the following options:
class Speechnorm extends Filter {
  /// Speechnorm
  Speechnorm({
    this.peak,
    this.p,
    this.expansion,
    this.e,
    this.compression,
    this.c,
    this.threshold,
    this.t,
    this.raise,
    this.r,
    this.fall,
    this.f,
    this.channels,
    this.h,
    this.invert,
    this.i,
    this.link,
    this.l,
    this.rms,
    this.m,
  });

  Object? peak, p;

  Object? expansion, e;

  Object? compression, c;

  Object? threshold, t;

  Object? raise, r;

  Object? fall, f;

  Object? channels, h;

  Object? invert, i;

  Object? link, l;

  Object? rms, m;

  @override
  String get name => 'speechnorm';

  @override
  Map<String, dynamic> get options => {
        'peak': peak,
        'p': p,
        'expansion': expansion,
        'e': e,
        'compression': compression,
        'c': c,
        'threshold': threshold,
        't': t,
        'raise': raise,
        'r': r,
        'fall': fall,
        'f': f,
        'channels': channels,
        'h': h,
        'invert': invert,
        'i': i,
        'link': link,
        'l': l,
        'rms': rms,
        'm': m,
      };
}
