import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply spectral tilt filter to audio stream.
///
/// This filter apply any spectral roll-off slope over any specified frequency band.
///
/// The filter accepts the following options:
class Atilt extends Filter {
  /// Atilt
  Atilt({
    this.freq,
    this.slope,
    this.width,
    this.order,
    this.level,
  });

  /// Set central frequency of tilt in Hz. Default is 10000 Hz.
  Object? freq;

  /// Set slope direction of tilt. Default is 0. Allowed range is from -1 to 1.
  Object? slope;

  /// Set width of tilt. Default is 1000. Allowed range is from 100 to 10000.
  Object? width;

  /// Set order of tilt filter.
  Object? order;

  /// Set input volume level. Allowed range is from 0 to 4. Default is 1.
  Object? level;

  @override
  String get name => 'atilt';

  @override
  Map<String, dynamic> get options => {
        'freq': freq,
        'slope': slope,
        'width': width,
        'order': order,
        'level': level,
      };
}
