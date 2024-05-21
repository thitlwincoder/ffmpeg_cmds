import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Boost subwoofer frequencies.
///
/// The filter accepts the following options:
class Asubboost extends Filter {
  /// Asubboost
  Asubboost({
    this.dry,
    this.wet,
    this.boost,
    this.decay,
    this.feedback,
    this.cutoff,
    this.slope,
    this.delay,
    this.channels,
  });

  /// Set dry gain, how much of original signal is kept. Allowed range is from 0 to 1. Default value is 1.0.
  Object? dry;

  /// Set wet gain, how much of filtered signal is kept. Allowed range is from 0 to 1. Default value is 1.0.
  Object? wet;

  /// Set max boost factor. Allowed range is from 1 to 12. Default value is 2.
  Object? boost;

  /// Set delay line decay gain value. Allowed range is from 0 to 1. Default value is 0.0.
  Object? decay;

  /// Set delay line feedback gain value. Allowed range is from 0 to 1. Default value is 0.9.
  Object? feedback;

  /// Set cutoff frequency in Hertz. Allowed range is 50 to 900. Default value is 100.
  Object? cutoff;

  /// Set slope amount for cutoff frequency. Allowed range is 0.0001 to 1. Default value is 0.5.
  Object? slope;

  /// Set delay. Allowed range is from 1 to 100. Default value is 20.
  Object? delay;

  /// Set the channels to process. Default value is all available.
  Object? channels;

  @override
  String get name => 'asubboost';

  @override
  Map<String, dynamic> get options => {
        'dry': dry,
        'wet': wet,
        'boost': boost,
        'decay': decay,
        'feedback': feedback,
        'cutoff': cutoff,
        'slope': slope,
        'delay': delay,
        'channels': channels,
      };
}
