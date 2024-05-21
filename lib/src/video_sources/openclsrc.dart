import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Generate video using an OpenCL program.
///
/// Example programs:
class Openclsrc extends Filter {
  /// Openclsrc
  Openclsrc({
    this.source,
    this.kernel,
    this.size,
    this.s,
    this.format,
    this.rate,
    this.r,
  });

  /// OpenCL program source file.
  Object? source;

  /// Kernel name in program.
  Object? kernel;

  /// Size of frames to generate. This must be set.
  Object? size, s;

  /// Pixel format to use for the generated frames. This must be set.
  Object? format;

  /// Number of frames generated every second. Default value is ’25’.
  Object? rate, r;

  @override
  String get name => 'openclsrc';

  @override
  Map<String, dynamic> get options => {
        'source': source,
        'kernel': kernel,
        'size': size,
        's': s,
        'format': format,
        'rate': rate,
        'r': r,
      };
}
