import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply motion-compensation deinterlacing.
///
/// It needs one field per frame as input and must thus be used together with yadif=1/3 or equivalent.
///
/// This filter accepts the following options:
class Mcdeint extends Filter {
  /// Mcdeint
  Mcdeint({
    this.mode,
    this.parity,
    this.qp,
  });

  /// Set the deinterlacing mode./// It accepts one of the following values:
  /// - `fast`
  /// - `medium`
  /// - `slow` use iterative motion estimation
  /// - `extra_slow` like ‘slow’, but use multiple reference frames.

  /// Default value is ‘/// fast’.
  Object? mode;

  /// Set the picture field parity assumed for the input video. It must be one of the following values:
  /// - `0, tff` assume top field first
  /// - `1, bff` assume bottom field first

  /// Default value is ‘/// bff’.
  Object? parity;

  /// Set per-block quantization parameter (QP) used by the internal encoder./// Higher values should result in a smoother motion vector field but less optimal individual vectors. Default value is 1.
  Object? qp;

  @override
  String get name => 'mcdeint';

  @override
  Map<String, dynamic> get options =>
      {'mode': mode, 'parity': parity, 'qp': qp};
}
