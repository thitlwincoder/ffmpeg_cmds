import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The null audio source, return unprocessed audio frames. It is mainly useful as a template and to be employed in analysis / debugging tools, or as the source for filters which ignore the input data (for example the sox synth filter).
///
/// This source accepts the following options:
class Anullsrc extends Filter {
  /// Anullsrc
  Anullsrc({
    this.channelLayout,
    this.cl,
    this.sampleRate,
    this.r,
    this.nbSamples,
    this.n,
    this.duration,
    this.d,
  });

  Object? channelLayout, cl;

  Object? sampleRate, r;

  Object? nbSamples, n;

  Object? duration, d;

  @override
  String get name => 'anullsrc';

  @override
  Map<String, dynamic> get options => {
        'channel_layout': channelLayout,
        'cl': cl,
        'sample_rate': sampleRate,
        'r': r,
        'nb_samples': nbSamples,
        'n': n,
        'duration': duration,
        'd': d,
      };
}
