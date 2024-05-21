import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Adjust color temperature in video to simulate variations in ambient color temperature.
///
/// The filter accepts the following options:
class Colortemperature extends Filter {
  /// Colortemperature
  Colortemperature({
    this.temperature,
    this.mix,
    this.pl,
  });

  /// Set the temperature in Kelvin. Allowed range is from 1000 to 40000. Default value is 6500 K.
  Object? temperature;

  /// Set mixing with filtered output. Allowed range is from 0 to 1. Default value is 1.
  Object? mix;

  /// Set the amount of preserving lightness. Allowed range is from 0 to 1. Default value is 0.
  Object? pl;

  @override
  String get name => 'colortemperature';

  @override
  Map<String, dynamic> get options =>
      {'temperature': temperature, 'mix': mix, 'pl': pl};
}
