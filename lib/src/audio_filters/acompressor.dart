import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// A compressor is mainly used to reduce the dynamic range of a signal. Especially modern music is mostly compressed at a high ratio to improve the overall loudness. It’s done to get the highest attention of a listener, "fatten" the sound and bring more "power" to the track. If a signal is compressed too much it may sound dull or "dead" afterwards or it may start to "pump" (which could be a powerful effect but can also destroy a track completely). The right compression is the key to reach a professional sound and is the high art of mixing and mastering. Because of its complex settings it may take a long time to get the right feeling for this kind of effect.
///
/// The filter accepts the following options:
class Acompressor extends Filter {
  /// Acompressor
  Acompressor({
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
    this.mix,
  });

  /// Set input gain. Default is 1. Range is between 0.015625 and 64.
  Object? levelIn;

  /// Set mode of compressor operation. Can be `upward` or `downward`. Default is `downward`.
  Object? mode;

  /// If a signal of stream rises above this level it will affect the gain reduction. By default it is 0.125. Range is between 0.00097563 and 1.
  Object? threshold;

  /// Set a ratio by which the signal is reduced. 1:2 means that if the level rose 4dB above the threshold, it will be only 2dB above after the reduction. Default is 2. Range is between 1 and 20.
  Object? ratio;

  /// Amount of milliseconds the signal has to rise above the threshold before gain reduction starts. Default is 20. Range is between 0.01 and 2000.
  Object? attack;

  /// Amount of milliseconds the signal has to fall below the threshold before reduction is decreased again. Default is 250. Range is between 0.01 and 9000.
  Object? release;

  /// Set the amount by how much signal will be amplified after processing. Default is 1. Range is from 1 to 64.
  Object? makeup;

  /// Curve the sharp knee around the threshold to enter gain reduction more softly. Default is 2.82843. Range is between 1 and 8.
  Object? knee;

  /// Choose if the `average` level between all channels of input stream or the louder(`maximum`) channel of input stream affects the reduction. Default is `average`.
  Object? link;

  /// Should the exact signal be taken in case of `peak` or an RMS one in case of `rms`. Default is `rms` which is mostly smoother.
  Object? detection;

  /// How much to use compressed signal in output. Default is 1. Range is between 0 and 1.
  Object? mix;

  @override
  String get name => 'acompressor';

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
        'mix': mix,
      };
}
