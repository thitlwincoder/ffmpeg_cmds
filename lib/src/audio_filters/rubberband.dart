import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply time-stretching and pitch-shifting with librubberband.
///
/// The filter accepts the following options:
class Rubberband extends Filter {
  /// Rubberband
  Rubberband({
    this.tempo,
    this.pitch,
    this.transients,
    this.detector,
    this.phase,
    this.window,
    this.smoothing,
    this.formant,
    this.pitchq,
    this.channels,
  });

  /// Set tempo scale factor.
  Object? tempo;

  /// Set pitch scale factor.
  Object? pitch;

  /// Set transients detector. Possible values are:
  /// - `crisp`
  /// - `mixed`
  /// - `smooth`
  Object? transients;

  /// Set detector. Possible values are:
  /// - `compound`
  /// - `percussive`
  /// - `soft`
  Object? detector;

  /// Set phase. Possible values are:
  /// - `laminar`
  /// - `independent`
  Object? phase;

  /// Set processing window size. Possible values are:
  /// - `standard`
  /// - `short`
  /// - `long`
  Object? window;

  /// Set smoothing. Possible values are:
  /// - `off`
  /// - `on`
  Object? smoothing;

  /// Enable formant preservation when shift pitching. Possible values are:
  /// - `shifted`
  /// - `preserved`
  Object? formant;

  /// Set pitch quality. Possible values are:
  /// - `quality`
  /// - `speed`
  /// - `consistency`
  Object? pitchq;

  /// Set channels. Possible values are:
  /// - `apart`
  /// - `together`
  Object? channels;

  @override
  String get name => 'rubberband';

  @override
  Map<String, dynamic> get options => {
        'tempo': tempo,
        'pitch': pitch,
        'transients': transients,
        'detector': detector,
        'phase': phase,
        'window': window,
        'smoothing': smoothing,
        'formant': formant,
        'pitchq': pitchq,
        'channels': channels,
      };
}
