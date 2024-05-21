import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Shift R/G/B/A pixels horizontally and/or vertically.
///
/// The filter accepts the following options:
class Rgbashift extends Filter {
  /// Rgbashift
  Rgbashift({
    this.rh,
    this.rv,
    this.gh,
    this.gv,
    this.bh,
    this.bv,
    this.ah,
    this.av,
    this.edge,
  });

  /// Set amount to shift red horizontally.
  Object? rh;

  /// Set amount to shift red vertically.
  Object? rv;

  /// Set amount to shift green horizontally.
  Object? gh;

  /// Set amount to shift green vertically.
  Object? gv;

  /// Set amount to shift blue horizontally.
  Object? bh;

  /// Set amount to shift blue vertically.
  Object? bv;

  /// Set amount to shift alpha horizontally.
  Object? ah;

  /// Set amount to shift alpha vertically.
  Object? av;

  /// Set edge mode, can be smear, default, or warp.
  Object? edge;

  @override
  String get name => 'rgbashift';

  @override
  Map<String, dynamic> get options => {
        'rh': rh,
        'rv': rv,
        'gh': gh,
        'gv': gv,
        'bh': bh,
        'bv': bv,
        'ah': ah,
        'av': av,
        'edge': edge,
      };
}
