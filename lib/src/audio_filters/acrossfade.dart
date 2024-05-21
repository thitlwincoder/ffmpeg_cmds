import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply cross fade from one input audio stream to another input audio stream. The cross fade is applied for specified duration near the end of first stream.
///
/// The filter accepts the following options:
class Acrossfade extends Filter {
  /// Acrossfade
  Acrossfade({
    this.nbSamples,
    this.ns,
    this.duration,
    this.d,
    this.overlap,
    this.o,
    this.curve1,
    this.curve2,
  });

  Object? nbSamples, ns;

  Object? duration, d;

  Object? overlap, o;

  /// Set curve for cross fade transition for first stream.
  Object? curve1;

  /// Set curve for cross fade transition for second stream./// For description of available curve types see [afade](file:///D:/Projects/Personal/ffmpeg_cmds/filters.html#afade) filter description.
  Object? curve2;

  @override
  String get name => 'acrossfade';

  @override
  Map<String, dynamic> get options => {
        'nb_samples': nbSamples,
        'ns': ns,
        'duration': duration,
        'd': d,
        'overlap': overlap,
        'o': o,
        'curve1': curve1,
        'curve2': curve2,
      };
}
