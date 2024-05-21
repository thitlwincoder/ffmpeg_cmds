import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply custom color maps to video stream.
///
/// This filter needs three input video streams. First stream is video stream that is going to be filtered out. Second and third video stream specify color patches for source color to target color mapping.
///
/// The filter accepts the following options:
class Colormap extends Filter {
  /// Colormap
  Colormap({
    this.patchSize,
    this.nbPatches,
    this.type,
    this.kernel,
  });

  /// Set the source and target video stream patch size in pixels.
  Object? patchSize;

  /// Set the max number of used patches from source and target video stream. Default value is number of patches available in additional video streams. Max allowed number of patches is `64`.
  Object? nbPatches;

  /// Set the adjustments used for target colors. Can be `relative` or `absolute`. Defaults is `absolute`.
  Object? type;

  /// Set the kernel used to measure color differences between mapped colors./// The accepted values are:
  /// - `euclidean`
  /// - `weuclidean`
  /// Default is `euclidean`.
  Object? kernel;

  @override
  String get name => 'colormap';

  @override
  Map<String, dynamic> get options => {
        'patch_size': patchSize,
        'nb_patches': nbPatches,
        'type': type,
        'kernel': kernel,
      };
}
