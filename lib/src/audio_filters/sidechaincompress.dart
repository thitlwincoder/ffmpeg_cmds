import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The filter accepts the following options:
class Sidechaincompress extends Filter {
  /// Sidechaincompress
  Sidechaincompress({
    this.levelIn,
    this.mode,
    this.threshold,
    this.ratio,
    this.attack,
    this.release,
    this.makeup,
    this.knee,
    this.link,
    this.detection,
    this.levelSc,
    this.mix,
  });

  /// Set input gain. Default is 1. Range is between 0.015625 and 64.
  Object? levelIn;

  /// Set mode of compressor operation. Can be `upward` or `downward`. Default is `downward`.
  Object? mode;

  /// If a signal of second stream raises above this level it will affect the gain reduction of first stream. By default is 0.125. Range is between 0.00097563 and 1.
  Object? threshold;

  /// Set a ratio about which the signal is reduced. 1:2 means that if the level raised 4dB above the threshold, it will be only 2dB above after the reduction. Default is 2. Range is between 1 and 20.
  Object? ratio;

  /// Amount of milliseconds the signal has to rise above the threshold before gain reduction starts. Default is 20. Range is between 0.01 and 2000.
  Object? attack;

  /// Amount of milliseconds the signal has to fall below the threshold before reduction is decreased again. Default is 250. Range is between 0.01 and 9000.
  Object? release;

  /// Set the amount by how much signal will be amplified after processing. Default is 1. Range is from 1 to 64.
  Object? makeup;

  /// Curve the sharp knee around the threshold to enter gain reduction more softly. Default is 2.82843. Range is between 1 and 8.
  Object? knee;

  /// Choose if the `average` level between all channels of side-chain stream or the louder(`maximum`) channel of side-chain stream affects the reduction. Default is `average`.
  Object? link;

  /// Should the exact signal be taken in case of `peak` or an RMS one in case of `rms`. Default is `rms` which is mainly smoother.
  Object? detection;

  /// Set sidechain gain. Default is 1. Range is between 0.015625 and 64.
  Object? levelSc;

  /// How much to use compressed signal in output. Default is 1. Range is between 0 and 1.
  Object? mix;

  @override
  String get name => 'sidechaincompress';

  @override
  Map<String, dynamic> get options => {
        'level_in': levelIn,
        'mode': mode,
        'threshold': threshold,
        'ratio': ratio,
        'attack': attack,
        'release': release,
        'makeup': makeup,
        'knee': knee,
        'link': link,
        'detection': detection,
        'level_sc': levelSc,
        'mix': mix,
      };
}
