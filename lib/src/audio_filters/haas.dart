import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply Haas effect to audio.
///
/// Note that this makes most sense to apply on mono signals. With this filter applied to mono signals it give some directionality and stretches its stereo image.
///
/// The filter accepts the following options:
class Haas extends Filter {
  /// Haas
  Haas({
    this.levelIn,
    this.levelOut,
    this.sideGain,
    this.middleSource,
    this.middlePhase,
    this.leftDelay,
    this.leftBalance,
    this.leftGain,
    this.leftPhase,
    this.rightDelay,
    this.rightBalance,
    this.rightGain,
    this.rightPhase,
  });

  /// Set input level. By default is 1, or 0dB
  Object? levelIn;

  /// Set output level. By default is 1, or 0dB.
  Object? levelOut;

  /// Set gain applied to side part of signal. By default is 1.
  Object? sideGain;

  /// Set kind of middle source. Can be one of the following:
  /// - `left` Pick left channel.
  /// - `right` Pick right channel.
  /// - `mid` Pick middle part signal of stereo image.
  /// - `side` Pick side part signal of stereo image.
  Object? middleSource;

  /// Change middle phase. By default is disabled.
  Object? middlePhase;

  /// Set left channel delay. By default is 2.05 milliseconds.
  Object? leftDelay;

  /// Set left channel balance. By default is -1.
  Object? leftBalance;

  /// Set left channel gain. By default is 1.
  Object? leftGain;

  /// Change left phase. By default is disabled.
  Object? leftPhase;

  /// Set right channel delay. By defaults is 2.12 milliseconds.
  Object? rightDelay;

  /// Set right channel balance. By default is 1.
  Object? rightBalance;

  /// Set right channel gain. By default is 1.
  Object? rightGain;

  /// Change right phase. By default is enabled.
  Object? rightPhase;

  @override
  String get name => 'haas';

  @override
  Map<String, dynamic> get options => {
        'level_in': levelIn,
        'level_out': levelOut,
        'side_gain': sideGain,
        'middle_source': middleSource,
        'middle_phase': middlePhase,
        'left_delay': leftDelay,
        'left_balance': leftBalance,
        'left_gain': leftGain,
        'left_phase': leftPhase,
        'right_delay': rightDelay,
        'right_balance': rightBalance,
        'right_gain': rightGain,
        'right_phase': rightPhase,
      };
}
