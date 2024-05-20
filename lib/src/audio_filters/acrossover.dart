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
  Object? order;

  /// Set input gain level. Allowed range is from 0 to 1. Default value is 1.
  Object? level;

  /// Set output gain for each band. Default value is 1 for all bands.
  Object? gains;

  /// Set which precision to use when processing samples.
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
