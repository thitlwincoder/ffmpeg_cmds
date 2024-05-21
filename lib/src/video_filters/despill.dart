import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Remove unwanted contamination of foreground colors, caused by reflected color of greenscreen or bluescreen.
///
/// This filter accepts the following options:
class Despill extends Filter {
  /// Despill
  Despill({
    this.type,
    this.mix,
    this.expand,
    this.red,
    this.green,
    this.blue,
    this.brightness,
    this.alpha,
  });

  /// Set what type of despill to use.
  Object? type;

  /// Set how spillmap will be generated.
  Object? mix;

  /// Set how much to get rid of still remaining spill.
  Object? expand;

  /// Controls amount of red in spill area.
  Object? red;

  /// Controls amount of green in spill area. Should be -1 for greenscreen.
  Object? green;

  /// Controls amount of blue in spill area. Should be -1 for bluescreen.
  Object? blue;

  /// Controls brightness of spill area, preserving colors.
  Object? brightness;

  /// Modify alpha from generated spillmap.
  Object? alpha;

  @override
  String get name => 'despill';

  @override
  Map<String, dynamic> get options => {
        'type': type,
        'mix': mix,
        'expand': expand,
        'red': red,
        'green': green,
        'blue': blue,
        'brightness': brightness,
        'alpha': alpha,
      };
}
