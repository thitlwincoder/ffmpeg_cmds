import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// A gate is mainly used to reduce lower parts of a signal. This kind of signal processing reduces disturbing noise between useful signals.
class Agate extends Filter {
  /// Agate
  Agate({
    this.levelIn,
    this.mode,
    this.range,
    this.threshold,
    this.ratio,
    this.attack,
    this.release,
    this.makeup,
    this.knee,
    this.detection,
    this.link,
  });

  /// Set input level before filtering. Default is 1. Allowed range is from 0.015625 to 64.
  Object? levelIn;

  /// Set the mode of operation. Can be `upward` or `downward`. Default is `downward`. If set to `upward` mode, higher parts of signal will be amplified, expanding dynamic range in upward direction. Otherwise, in case of `downward` lower parts of signal will be reduced.
  Object? mode;

  /// Set the level of gain reduction when the signal is below the threshold. Default is 0.06125. Allowed range is from 0 to 1. Setting this to 0 disables reduction and then filter behaves like expander.
  Object? range;

  /// If a signal rises above this level the gain reduction is released. Default is 0.125. Allowed range is from 0 to 1.
  Object? threshold;

  /// Set a ratio by which the signal is reduced. Default is 2. Allowed range is from 1 to 9000.
  Object? ratio;

  /// Amount of milliseconds the signal has to rise above the threshold before gain reduction stops. Default is 20 milliseconds. Allowed range is from 0.01 to 9000.
  Object? attack;

  /// Amount of milliseconds the signal has to fall below the threshold before the reduction is increased again. Default is 250 milliseconds. Allowed range is from 0.01 to 9000.
  Object? release;

  /// Set amount of amplification of signal after processing. Default is 1. Allowed range is from 1 to 64.
  Object? makeup;

  /// Curve the sharp knee around the threshold to enter gain reduction more softly. Default is 2.828427125. Allowed range is from 1 to 8.
  Object? knee;

  /// Choose if exact signal should be taken for detection or an RMS like one. Default is `rms`. Can be `peak` or `rms`.
  Object? detection;

  /// Choose if the average level between all channels or the louder channel affects the reduction. Default is `average`. Can be `average` or `maximum`.
  Object? link;

  @override
  String get name => 'agate';

  @override
  Map<String, dynamic> get options => {
        'level_in': levelIn,
        'mode': mode,
        'range': range,
        'threshold': threshold,
        'ratio': ratio,
        'attack': attack,
        'release': release,
        'makeup': makeup,
        'knee': knee,
        'detection': detection,
        'link': link,
      };
}
