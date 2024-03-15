import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Denoise frames using Block-Matching 3D algorithm.
class Bm3d implements Filter {
  /// Bm3d
  Bm3d({
    this.sigma,
    this.block,
    this.bstep,
    this.group,
    this.range,
    this.mstep,
    this.thmse,
  });

  /// Set denoising strength. Default value is `1`. Allowed range is from 0 to 999.9. The denoising algorithm is very sensitive to sigma, so adjust it according to the source.
  int? sigma;

  /// Set local patch size. This sets dimensions in 2D.
  int? block;

  /// Set sliding step for processing blocks. Default value is `4`. Allowed range is from 1 to 64. Smaller values allows processing more reference blocks and is slower.
  int? bstep;

  /// Set maximal number of similar blocks for 3rd dimension. Default value is `1`. When set to 1, no block matching is done. Larger values allows more blocks in single group. Allowed range is from 1 to 256.
  int? group;

  /// Set radius for search block matching. Default is `9`. Allowed range is from 1 to INT32_MAX.
  int? range;

  /// Set step between two search locations for block matching. Default is `1`. Allowed range is from 1 to 64. Smaller is slower.
  int? mstep;

  /// Set threshold of mean square error for block matching. Valid range is 0 to INT32_MAX.
  int? thmse;

  /// Set thresholding parameter for hard thresholding in 3D transformed domain. Larger values results in stronger hard-thresholding filtering in frequency domain.
  int? hdthr;

  /// Set filtering estimation mode. Can be `basic` or `final`. Default is `basic`.
  String? estim;

  /// If enabled, filter will use 2nd stream for block matching. Default is disabled for `basic` value of [estim] option, and always enabled if value of estim is `final`.
  int? ref;

  /// Set planes to filter. Default is all available except `alpha`.
  int? planes;

  @override
  String get name => 'bm3d';

  @override
  Map<String, dynamic> get options => {
        'sigma': sigma,
        'block': block,
        'bstep': bstep,
        'group': group,
        'range': range,
        'mstep': mstep,
        'thmse': thmse,
        'hdthr': hdthr,
        'estim': estim,
        'ref': ref,
        'planes': planes,
      };
}
