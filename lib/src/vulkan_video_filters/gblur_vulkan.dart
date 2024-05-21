import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply Gaussian blur filter on Vulkan frames.
///
/// The filter accepts the following options:
class GblurVulkan extends Filter {
  /// GblurVulkan
  GblurVulkan({
    this.sigma,
    this.sigmaV,
    this.planes,
    this.size,
    this.sizeV,
  });

  /// Set horizontal sigma, standard deviation of Gaussian blur. Default is `0.5`.
  Object? sigma;

  /// Set vertical sigma, if negative it will be same as `sigma`. Default is `-1`.
  Object? sigmaV;

  /// Set which planes to filter. By default all planes are filtered.
  Object? planes;

  /// Set the kernel size along the horizontal axis. Default is `19`.
  Object? size;

  /// Set the kernel size along the vertical axis. Default is `0`, which sets to use the same value as size.
  Object? sizeV;

  @override
  String get name => 'gblur_vulkan';

  @override
  Map<String, dynamic> get options => {
        'sigma': sigma,
        'sigmaV': sigmaV,
        'planes': planes,
        'size': size,
        'sizeV': sizeV,
      };
}
