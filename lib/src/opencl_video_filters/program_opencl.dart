import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Filter video using an OpenCL program.
///
/// The program source file must contain a kernel function with the given name, which will be run once for each plane of the output. Each run on a plane gets enqueued as a separate 2D global NDRange with one work-item for each pixel to be generated. The global ID offset for each work-item is therefore the coordinates of a pixel in the destination image.
///
/// The kernel function needs to take the following arguments:
///
/// Example programs:
class ProgramOpencl extends Filter {
  /// ProgramOpencl
  ProgramOpencl({
    this.source,
    this.kernel,
    this.inputs,
    this.size,
    this.s,
  });

  /// OpenCL program source file.
  Object? source;

  /// Kernel name in program.
  Object? kernel;

  /// Number of inputs to the filter. Defaults to 1.
  Object? inputs;

  /// Size of output frames. Defaults to the same as the first input.
  Object? size, s;

  @override
  String get name => 'program_opencl';

  @override
  Map<String, dynamic> get options => {
        'source': source,
        'kernel': kernel,
        'inputs': inputs,
        'size': size,
        's': s,
      };
}
