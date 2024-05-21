import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Split audio stream into several bands.
///
/// This filter splits audio stream into two or more frequency ranges. Summing all streams back will give flat output.
///
/// The filter accepts the following options:
class Acrossover extends Filter {
  /// Acrossover
  Acrossover({
    this.split,
    this.order,
    this.level,
    this.gains,
    this.precision,
  });

  /// Set split frequencies. Those must be positive and increasing.
  Object? split;

  /// Set filter order for each band split. This controls filter roll-off or steepness of filter transfer function. Available values are:
  /// - `2nd` 12 dB per octave.
  /// - `4th` 24 dB per octave.
  /// - `6th` 36 dB per octave.
  /// - `8th` 48 dB per octave.
  /// - `10th` 60 dB per octave.
  /// - `12th` 72 dB per octave.
  /// - `14th` 84 dB per octave.
  /// - `16th` 96 dB per octave.
  /// - `18th` 108 dB per octave.
  /// - `20th` 120 dB per octave.

  /// Default is 4th.
  Object? order;

  /// Set input gain level. Allowed range is from 0 to 1. Default value is 1.
  Object? level;

  /// Set output gain for each band. Default value is 1 for all bands.
  Object? gains;

  /// Set which precision to use when processing samples.
  /// - `auto` Auto pick internal sample format depending on other filters.
  /// - `float` Always use single-floating point precision sample format.
  /// - `double` Always use double-floating point precision sample format.

  /// Default value is `auto`.
  Object? precision;

  @override
  String get name => 'acrossover';

  @override
  Map<String, dynamic> get options => {
        'split': split,
        'order': order,
        'level': level,
        'gains': gains,
        'precision': precision,
      };
}
