import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply echoing to the input audio.
///
/// A description of the accepted parameters follows.
class Aecho extends Filter {
  /// Aecho
  Aecho({
    this.inGain,
    this.outGain,
    this.delays,
    this.decays,
  });

  /// Set input gain of reflected signal. Default is `0.6`.
  Object? inGain;

  /// Set output gain of reflected signal. Default is `0.3`.
  Object? outGain;

  /// Set list of time intervals in milliseconds between original signal and reflections separated by ’|’. Allowed range for each `delay` is `(0 - 90000.0\]`. Default is `1000`.
  Object? delays;

  /// Set list of loudness of reflected signals separated by ’|’. Allowed range for each `decay` is `(0 - 1.0\]`. Default is `0.5`.
  Object? decays;

  @override
  String get name => 'aecho';

  @override
  Map<String, dynamic> get options => {
        'in_gain': inGain,
        'out_gain': outGain,
        'delays': delays,
        'decays': decays,
      };
}
