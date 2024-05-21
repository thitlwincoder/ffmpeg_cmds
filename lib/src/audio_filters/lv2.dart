import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Load a LV2 (LADSPA Version 2) plugin.
class Lv2 extends Filter {
  /// Lv2
  Lv2({
    this.plugin,
    this.p,
    this.controls,
    this.c,
    this.sampleRate,
    this.s,
    this.nbSamples,
    this.n,
    this.duration,
    this.d,
  });

  Object? plugin, p;

  Object? controls, c;

  Object? sampleRate, s;

  Object? nbSamples, n;

  Object? duration, d;

  @override
  String get name => 'lv2';

  @override
  Map<String, dynamic> get options => {
        'plugin': plugin,
        'p': p,
        'controls': controls,
        'c': c,
        'sample_rate': sampleRate,
        's': s,
        'nb_samples': nbSamples,
        'n': n,
        'duration': duration,
        'd': d,
      };
}
