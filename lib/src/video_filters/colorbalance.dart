import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Modify intensity of primary colors (red, green and blue) of input frames.
///
/// The filter allows an input frame to be adjusted in the shadows, midtones or highlights regions for the red-cyan, green-magenta or blue-yellow balance.
///
/// A positive adjustment value shifts the balance towards the primary color, a negative value towards the complementary color.
///
/// The filter accepts the following options:
class Colorbalance extends Filter {
  /// Colorbalance
  Colorbalance({
    this.rs,
    this.gs,
    this.bs,
    this.rm,
    this.gm,
    this.bm,
    this.rh,
    this.gh,
    this.bh,
    this.pl,
  });

  /// Adjust red, green and blue shadows (darkest pixels).
  Object? rs;

  /// Adjust red, green and blue midtones (medium pixels).
  Object? gs;

  /// Adjust red, green and blue highlights (brightest pixels)./// Allowed ranges for options are `\[-1.0, 1.0\]`. Defaults are `0`.
  Object? bs;

  /// Preserve lightness when changing color balance. Default is disabled.
  Object? rm;

  Object? gm;

  Object? bm;

  Object? rh;

  Object? gh;

  Object? bh;

  Object? pl;

  @override
  String get name => 'colorbalance';

  @override
  Map<String, dynamic> get options => {
        'rs': rs,
        'gs': gs,
        'bs': bs,
        'rm': rm,
        'gm': gm,
        'bm': bm,
        'rh': rh,
        'gh': gh,
        'bh': bh,
        'pl': pl,
      };
}
