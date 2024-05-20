import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply cross fade from one input audio stream to another input audio stream. The cross fade is applied for specified duration near the end of first stream.
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

  /// Specify the number of samples for which the cross fade effect has to last. At the end of the cross fade effect the first input audio will be completely silent. Default is `44100`.
  Object? nbSamples, ns;

  /// Specify the duration of the cross fade effect. See [(ffmpeg-utils)the Time duration section in the ffmpeg-utils(1) manual](https://ffmpeg.org/ffmpeg-utils.html#time-duration-syntax) for the accepted syntax. By default the duration is determined by [nbSamples]. If set this option is used instead of [nbSamples].
  Object? duration, d;

  /// Should first stream end overlap with second stream start. Default is enabled.
  Object? overlap, o;

  /// Set curve for cross fade transition for first stream.
  Object? curve1;

  /// Set curve for cross fade transition for second stream.
  ///
  /// For description of available curve types see [afade](https://ffmpeg.org/ffmpeg-filters.html#afade) filter description.
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
