import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The filter accepts the following options:
class Loudnorm extends Filter {
  /// Loudnorm
  Loudnorm({
    this.I,
    this.i,
    this.lra,
    this.tp,
    this.measuredI,
    this.measuredLRA,
    this.measuredLra,
    this.measuredTP,
    this.measuredTp,
    this.measuredThresh,
    this.offset,
    this.linear,
    this.dualMono,
    this.printFormat,
  });

  Object? I, i;

  Object? lra;

  Object? tp;

  Object? measuredI;

  Object? measuredLRA, measuredLra;

  Object? measuredTP, measuredTp;

  /// Measured threshold of input file. Range is -99.0 - +0.0.
  Object? measuredThresh;

  /// Set offset gain. Gain is applied before the true-peak limiter. Range is -99.0 - +99.0. Default is +0.0.
  Object? offset;

  /// Normalize by linearly scaling the source audio. `measured_I`, `measured_LRA`, `measured_TP`, and `measured_thresh` must all be specified. Target LRA shouldn’t be lower than source LRA and the change in integrated loudness shouldn’t result in a true peak which exceeds the target TP. If any of these conditions aren’t met, normalization mode will revert to dynamic. Options are `true` or `false`. Default is `true`.
  Object? linear;

  /// Treat mono input files as "dual-mono". If a mono file is intended for playback on a stereo system, its EBU R128 measurement will be perceptually incorrect. If set to `true`, this option will compensate for this effect. Multi-channel input files are not affected by this option. Options are true or false. Default is false.
  Object? dualMono;

  /// Set print format for stats. Options are summary, json, or none. Default value is none.
  Object? printFormat;

  @override
  String get name => 'loudnorm';

  @override
  Map<String, dynamic> get options => {
        'I': I,
        'i': i,
        'LRA': lra,
        'lra': lra,
        'TP': tp,
        'tp': tp,
        'measured_I': measuredI,
        'measured_i': measuredI,
        'measured_LRA': measuredLRA,
        'measured_lra': measuredLra,
        'measured_TP': measuredTP,
        'measured_tp': measuredTp,
        'measured_thresh': measuredThresh,
        'offset': offset,
        'linear': linear,
        'dual_mono': dualMono,
        'print_format': printFormat,
      };
}
