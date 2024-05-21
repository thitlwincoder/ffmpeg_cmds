import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Adjust color contrast between RGB components.
///
/// The filter accepts the following options:
class Colorcontrast extends Filter {
  /// Colorcontrast
  Colorcontrast({
    this.rc,
    this.gm,
    this.by,
    this.rcw,
    this.gmw,
    this.byw,
    this.pl,
  });

  /// Set the red-cyan contrast. Defaults is 0.0. Allowed range is from -1.0 to 1.0.
  Object? rc;

  /// Set the green-magenta contrast. Defaults is 0.0. Allowed range is from -1.0 to 1.0.
  Object? gm;

  /// Set the blue-yellow contrast. Defaults is 0.0. Allowed range is from -1.0 to 1.0.
  Object? by;

  /// Set the weight of each `rc`, `gm`, `by` option value. Default value is 0.0. Allowed range is from 0.0 to 1.0. If all weights are 0.0 filtering is disabled.
  Object? rcw;

  /// Set the amount of preserving lightness. Default value is 0.0. Allowed range is from 0.0 to 1.0.
  Object? gmw;

  Object? byw;

  Object? pl;

  @override
  String get name => 'colorcontrast';

  @override
  Map<String, dynamic> get options => {
        'rc': rc,
        'gm': gm,
        'by': by,
        'rcw': rcw,
        'gmw': gmw,
        'byw': byw,
        'pl': pl,
      };
}
