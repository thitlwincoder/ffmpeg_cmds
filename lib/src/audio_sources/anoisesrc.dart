import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Generate a noise audio signal.
///
/// The filter accepts the following options:
class Anoisesrc extends Filter {
  /// Anoisesrc
  Anoisesrc({
    this.sampleRate,
    this.r,
    this.amplitude,
    this.a,
    this.duration,
    this.d,
    this.color,
    this.colour,
    this.c,
    this.seed,
    this.s,
    this.nbSamples,
    this.n,
    this.density,
  });

  Object? sampleRate, r;

  Object? amplitude, a;

  Object? duration, d;

  Object? color, colour, c;

  Object? seed, s;

  Object? nbSamples, n;

  /// Set the density (0.0 - 1.0) for the velvet noise generator, default is 0.05.
  Object? density;

  @override
  String get name => 'anoisesrc';

  @override
  Map<String, dynamic> get options => {
        'sample_rate': sampleRate,
        'r': r,
        'amplitude': amplitude,
        'a': a,
        'duration': duration,
        'd': d,
        'color': color,
        'colour': colour,
        'c': c,
        'seed': seed,
        's': s,
        'nb_samples': nbSamples,
        'n': n,
        'density': density,
      };
}
