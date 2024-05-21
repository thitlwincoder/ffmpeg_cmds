import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// It accepts the following parameters:
class TransposeVt extends Filter {
  /// TransposeVt
  TransposeVt({
    this.dir,
    this.passthrough,
  });

  /// Specify the transposition direction./// Can assume the following values:
  /// - `cclock_flip` Rotate by 90 degrees counterclockwise and vertically flip. (default)
  /// - `clock` Rotate by 90 degrees clockwise.
  /// - `cclock` Rotate by 90 degrees counterclockwise.
  /// - `clock_flip` Rotate by 90 degrees clockwise and vertically flip.
  /// - `hflip` Flip the input video horizontally.
  /// - `vflip` Flip the input video vertically.
  Object? dir;

  /// Do not apply the transposition if the input geometry matches the one specified by the specified value. It accepts the following values:
  /// - `none` Always apply transposition. (default)
  /// - `portrait` Preserve portrait geometry (when height >= width).
  /// - `landscape` Preserve landscape geometry (when width >= height).
  Object? passthrough;

  @override
  String get name => 'transpose_vt';

  @override
  Map<String, dynamic> get options => {'dir': dir, 'passthrough': passthrough};
}
