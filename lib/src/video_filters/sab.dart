import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply Shape Adaptive Blur.
///
/// The filter accepts the following options:
///
/// Each chroma option value, if not explicitly specified, is set to the corresponding luma option value.
class Sab extends Filter {
  /// Sab
  Sab({
    this.lumaRadius,
    this.lr,
    this.lumaPreFilterRadius,
    this.lpfr,
    this.lumaStrength,
    this.ls,
    this.chromaRadius,
    this.cr,
    this.chromaPreFilterRadius,
    this.cpfr,
    this.chromaStrength,
    this.cs,
  });

  /// Set luma blur filter strength, must be a value in range 0.1-4.0, default value is 1.0. A greater value will result in a more blurred image, and in slower processing.
  Object? lumaRadius, lr;

  /// Set luma pre-filter radius, must be a value in the 0.1-2.0 range, default value is 1.0.
  Object? lumaPreFilterRadius, lpfr;

  /// Set luma maximum difference between pixels to still be considered, must be a value in the 0.1-100.0 range, default value is 1.0.
  Object? lumaStrength, ls;

  /// Set chroma blur filter strength, must be a value in range -0.9-4.0. A greater value will result in a more blurred image, and in slower processing.
  Object? chromaRadius, cr;

  /// Set chroma pre-filter radius, must be a value in the -0.9-2.0 range.
  Object? chromaPreFilterRadius, cpfr;

  /// Set chroma maximum difference between pixels to still be considered, must be a value in the -0.9-100.0 range.
  Object? chromaStrength, cs;

  @override
  String get name => 'sab';

  @override
  Map<String, dynamic> get options => {
        'luma_radius': lumaRadius,
        'lr': lr,
        'luma_pre_filter_radius': lumaPreFilterRadius,
        'lpfr': lpfr,
        'luma_strength': lumaStrength,
        'ls': ls,
        'chroma_radius': chromaRadius,
        'cr': cr,
        'chroma_pre_filter_radius': chromaPreFilterRadius,
        'cpfr': cpfr,
        'chroma_strength': chromaStrength,
        'cs': cs,
      };
}
