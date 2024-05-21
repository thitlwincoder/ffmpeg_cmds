import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Dynamic Audio Normalizer.
///
/// This filter applies a certain amount of gain to the input audio in order to bring its peak magnitude to a target level (e.g. 0 dBFS). However, in contrast to more "simple" normalization algorithms, the Dynamic Audio Normalizer \*dynamically\* re-adjusts the gain factor to the input audio. This allows for applying extra gain to the "quiet" sections of the audio while avoiding distortions or clipping the "loud" sections. In other words: The Dynamic Audio Normalizer will "even out" the volume of quiet and loud sections, in the sense that the volume of each section is brought to the same target level. Note, however, that the Dynamic Audio Normalizer achieves this goal \*without\* applying "dynamic range compressing". It will retain 100% of the dynamic range \*within\* each section of the audio file.
class Dynaudnorm extends Filter {
  /// Dynaudnorm
  Dynaudnorm({
    this.framelen,
    this.f,
    this.gausssize,
    this.g,
    this.peak,
    this.p,
    this.maxgain,
    this.m,
    this.targetrms,
    this.r,
    this.coupling,
    this.n,
    this.correctdc,
    this.c,
    this.altboundary,
    this.b,
    this.compress,
    this.s,
    this.threshold,
    this.t,
    this.channels,
    this.h,
    this.overlap,
    this.o,
    this.curve,
    this.v,
  });

  Object? framelen, f;

  Object? gausssize, g;

  Object? peak, p;

  Object? maxgain, m;

  Object? targetrms, r;

  Object? coupling, n;

  Object? correctdc, c;

  Object? altboundary, b;

  Object? compress, s;

  Object? threshold, t;

  Object? channels, h;

  Object? overlap, o;

  Object? curve, v;

  @override
  String get name => 'dynaudnorm';

  @override
  Map<String, dynamic> get options => {
        'framelen': framelen,
        'f': f,
        'gausssize': gausssize,
        'g': g,
        'peak': peak,
        'p': p,
        'maxgain': maxgain,
        'm': m,
        'targetrms': targetrms,
        'r': r,
        'coupling': coupling,
        'n': n,
        'correctdc': correctdc,
        'c': c,
        'altboundary': altboundary,
        'b': b,
        'compress': compress,
        's': s,
        'threshold': threshold,
        't': t,
        'channels': channels,
        'h': h,
        'overlap': overlap,
        'o': o,
        'curve': curve,
        'v': v,
      };
}
