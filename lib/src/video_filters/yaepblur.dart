import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply blur filter while preserving edges ("yaepblur" means "yet another edge preserving blur filter"). The algorithm is described in "J. S. Lee, Digital image enhancement and noise filtering by use of local statistics, IEEE Trans. Pattern Anal. Mach. Intell. PAMI-2, 1980."
///
/// It accepts the following parameters:
class Yaepblur extends Filter {
  /// Yaepblur
  Yaepblur({
    this.radius,
    this.r,
    this.planes,
    this.p,
    this.sigma,
    this.s,
  });

  /// Set the window radius. Default value is 3.
  Object? radius, r;

  /// Set which planes to filter. Default is only the first plane.
  Object? planes, p;

  /// Set blur strength. Default value is 128.
  Object? sigma, s;

  @override
  String get name => 'yaepblur';

  @override
  Map<String, dynamic> get options => {
        'radius': radius,
        'r': r,
        'planes': planes,
        'p': p,
        'sigma': sigma,
        's': s,
      };
}
