import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Cross fade two videos with custom transition effect by using OpenCL.
///
/// It accepts the following options:
///
/// The program source file must contain a kernel function with the given name, which will be run once for each plane of the output. Each run on a plane gets enqueued as a separate 2D global NDRange with one work-item for each pixel to be generated. The global ID offset for each work-item is therefore the coordinates of a pixel in the destination image.
///
/// The kernel function needs to take the following arguments:
///
/// Example programs:
class XfadeOpencl extends Filter {
  /// XfadeOpencl
  XfadeOpencl({
    this.transition,
    this.source,
    this.kernel,
    this.duration,
    this.offset,
  });

  /// Set one of possible transition effects.
  /// - `custom` Select custom transition effect, the actual transition description will be picked from source and kernel options.
  /// - `fade`
  /// - `wipeleft`
  /// - `wiperight`
  /// - `wipeup`
  /// - `wipedown`
  /// - `slideleft`
  /// - `slideright`
  /// - `slideup`
  /// - `slidedown` Default transition is fade.
  Object? transition;

  /// OpenCL program source file for custom transition.
  Object? source;

  /// Set name of kernel to use for custom transition from program source file.
  Object? kernel;

  /// Set duration of video transition.
  Object? duration;

  /// Set time of start of transition relative to first video.
  Object? offset;

  @override
  String get name => 'xfade_opencl';

  @override
  Map<String, dynamic> get options => {
        'transition': transition,
        'source': source,
        'kernel': kernel,
        'duration': duration,
        'offset': offset,
      };
}
