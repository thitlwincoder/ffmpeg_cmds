import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Perform HDR(PQ/HLG) to SDR conversion with tone-mapping.
///
/// It accepts the following parameters:
class TonemapOpencl extends Filter {
  /// TonemapOpencl
  TonemapOpencl({
    this.tonemap,
    this.param,
    this.desat,
    this.threshold,
    this.format,
    this.range,
    this.r,
    this.primaries,
    this.p,
    this.transfer,
    this.t,
    this.matrix,
    this.m,
  });

  /// Specify the tone-mapping operator to be used. Same as tonemap option in [tonemap](file:///D:/Projects/Personal/ffmpeg_cmds/filters.html#tonemap).
  Object? tonemap;

  /// Tune the tone mapping algorithm. same as param option in [tonemap](file:///D:/Projects/Personal/ffmpeg_cmds/filters.html#tonemap).
  Object? param;

  /// Apply desaturation for highlights that exceed this level of brightness. The higher the parameter, the more color information will be preserved. This setting helps prevent unnaturally blown-out colors for super-highlights, by (smoothly) turning into white instead. This makes images feel more natural, at the cost of reducing information about out-of-range colors./// The default value is 0.5, and the algorithm here is a little different from the cpu version tonemap currently. A setting of 0.0 disables this option.
  Object? desat;

  /// The tonemapping algorithm parameters is fine-tuned per each scene. And a threshold is used to detect whether the scene has changed or not. If the distance between the current frame average brightness and the current running average exceeds a threshold value, we would re-calculate scene average and peak brightness. The default value is 0.2.
  Object? threshold;

  /// Specify the output pixel format./// Currently supported formats are:
  /// - `p010`
  /// - `nv12`
  Object? format;

  /// Set the output color range./// Possible values are:
  /// - `tv/mpeg`
  /// - `pc/jpeg`
  /// Default is same as input.
  Object? range, r;

  /// Set the output color primaries./// Possible values are:
  /// - `bt709`
  /// - `bt2020`
  /// Default is same as input.
  Object? primaries, p;

  /// Set the output transfer characteristics./// Possible values are:
  /// - `bt709`
  /// - `bt2020`
  /// Default is bt709.
  Object? transfer, t;

  /// Set the output colorspace matrix./// Possible value are:
  /// - `bt709`
  /// - `bt2020`
  /// Default is same as input.
  Object? matrix, m;

  @override
  String get name => 'tonemap_opencl';

  @override
  Map<String, dynamic> get options => {
        'tonemap': tonemap,
        'param': param,
        'desat': desat,
        'threshold': threshold,
        'format': format,
        'range': range,
        'r': r,
        'primaries': primaries,
        'p': p,
        'transfer': transfer,
        't': t,
        'matrix': matrix,
        'm': m,
      };
}
