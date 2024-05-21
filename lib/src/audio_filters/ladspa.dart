import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Load a LADSPA (Linux Audio Developer’s Simple Plugin API) plugin.
class Ladspa extends Filter {
  /// Ladspa
  Ladspa({
    this.file,
    this.f,
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
    this.latency,
    this.l,
  });

  Object? file, f;

  Object? plugin, p;

  Object? controls, c;

  Object? sampleRate, s;

  Object? nbSamples, n;

  Object? duration, d;

  Object? latency, l;

  @override
  String get name => 'ladspa';

  @override
  Map<String, dynamic> get options => {
        'file': file,
        'f': f,
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
        'latency': latency,
        'l': l,
      };
}
