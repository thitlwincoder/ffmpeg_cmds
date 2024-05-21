import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Convert color matrix.
///
/// The filter accepts the following options:
///
/// For example to convert from BT.601 to SMPTE-240M, use the command:
class Colormatrix extends Filter {
  /// Colormatrix
  Colormatrix({
    this.src,
    this.dst,
  });

  /// Specify the source and destination color matrix. Both values must be specified./// The accepted values are:
  /// - `bt709` BT.709
  /// - `fcc` FCC
  /// - `bt601` BT.601
  /// - `bt470` BT.470
  /// - `bt470bg` BT.470BG
  /// - `smpte170m` SMPTE-170M
  /// - `smpte240m` SMPTE-240M
  /// - `bt2020` BT.2020
  Object? src;

  Object? dst;

  @override
  String get name => 'colormatrix';

  @override
  Map<String, dynamic> get options => {'src': src, 'dst': dst};
}
