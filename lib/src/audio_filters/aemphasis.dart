import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Audio emphasis filter creates or restores material directly taken from LPs or emphased CDs with different filter curves. E.g. to store music on vinyl the signal has to be altered by a filter first to even out the disadvantages of this recording medium. Once the material is played back the inverse filter has to be applied to restore the distortion of the frequency response.
///
/// The filter accepts the following options:
class Aemphasis extends Filter {
  /// Aemphasis
  Aemphasis({
    this.levelIn,
    this.levelOut,
    this.mode,
    this.type,
  });

  /// Set input gain.
  Object? levelIn;

  /// Set output gain.
  Object? levelOut;

  /// Set filter mode. For restoring material use `reproduction` mode, otherwise use `production` mode. Default is `reproduction` mode.
  Object? mode;

  /// Set filter type. Selects medium. Can be one of the following:
  /// - `col` select Columbia.
  /// - `emi` select EMI.
  /// - `bsi` select BSI (78RPM).
  /// - `riaa` select RIAA.
  /// - `cd` select Compact Disc (CD).
  /// - `50fm` select 50µs (FM).
  /// - `75fm` select 75µs (FM).
  /// - `50kf` select 50µs (FM-KF).
  /// - `75kf` select 75µs (FM-KF).
  Object? type;

  @override
  String get name => 'aemphasis';

  @override
  Map<String, dynamic> get options =>
      {'level_in': levelIn, 'level_out': levelOut, 'mode': mode, 'type': type};
}
