import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The filter accepts the following options.
class NlmeansVulkan extends Filter {
  /// NlmeansVulkan
  NlmeansVulkan({
    this.s,
    this.p,
    this.r,
    this.t,
    this.s0,
    this.s1,
    this.s2,
    this.s3,
    this.p0,
    this.p1,
    this.p2,
    this.p3,
  });

  /// Set denoising strength for all components. Default is 1.0. Must be in range \[1.0, 100.0\].
  Object? s;

  /// Set patch size for all planes. Default is 7. Must be odd number in range \[0, 99\].
  Object? p;

  /// Set research size. Default is 15. Must be odd number in range \[0, 99\].
  Object? r;

  /// Set parallelism. Default is 36. Must be a number in the range \[1, 168\]. Larger values may speed up processing, at the cost of more VRAM. Lower values will slow it down, reducing VRAM usage. Only supported on GPUs with atomic float operations (RDNA3+, Ampere+).
  Object? t;

  /// Set denoising strength for a specific component. Default is 1, equal to /// s. Must be odd number in range \[1, 100\].
  Object? s0;

  /// Set patch size for a specific component. Default is 7, equal to /// p. Must be odd number in range \[0, 99\].
  Object? s1;

  Object? s2;

  Object? s3;

  Object? p0;

  Object? p1;

  Object? p2;

  Object? p3;

  @override
  String get name => 'nlmeans_vulkan';

  @override
  Map<String, dynamic> get options => {
        's': s,
        'p': p,
        'r': r,
        't': t,
        's0': s0,
        's1': s1,
        's2': s2,
        's3': s3,
        'p0': p0,
        'p1': p1,
        'p2': p2,
        'p3': p3,
      };
}
