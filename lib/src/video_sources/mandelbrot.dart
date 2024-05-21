import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// This source accepts the following options:
class Mandelbrot extends Filter {
  /// Mandelbrot
  Mandelbrot({
    this.endPts,
    this.endScale,
    this.inner,
    this.bailout,
    this.maxiter,
    this.outer,
    this.rate,
    this.r,
    this.size,
    this.s,
    this.startScale,
    this.startX,
    this.startY,
  });

  /// Set the terminal pts value. Default value is 400.
  Object? endPts;

  /// Set the terminal scale value. Must be a floating point value. Default value is 0.3.
  Object? endScale;

  /// Set the inner coloring mode, that is the algorithm used to draw the Mandelbrot fractal internal region./// It shall assume one of the following values:
  /// - `black` Set black mode.
  /// - `convergence` Show time until convergence.
  /// - `mincol` Set color based on point closest to the origin of the iterations.
  /// - `period` Set period mode.

  /// Default value is mincol.
  Object? inner;

  /// Set the bailout value. Default value is 10.0.
  Object? bailout;

  /// Set the maximum of iterations performed by the rendering algorithm. Default value is 7189.
  Object? maxiter;

  /// Set outer coloring mode. It shall assume one of following values:
  /// - `iteration_count` Set iteration count mode.
  /// - `normalized_iteration_count` set normalized iteration count mode.

  /// Default value is normalized\_iteration\_count.
  Object? outer;

  /// Set frame rate, expressed as number of frames per second. Default value is "25".
  Object? rate, r;

  /// Set frame size. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax). Default value is "640x480".
  Object? size, s;

  /// Set the initial scale value. Default value is 3.0.
  Object? startScale;

  /// Set the initial x position. Must be a floating point value between -100 and 100. Default value is -0.743643887037158704752191506114774.
  Object? startX;

  /// Set the initial y position. Must be a floating point value between -100 and 100. Default value is -0.131825904205311970493132056385139.
  Object? startY;

  @override
  String get name => 'mandelbrot';

  @override
  Map<String, dynamic> get options => {
        'end_pts': endPts,
        'end_scale': endScale,
        'inner': inner,
        'bailout': bailout,
        'maxiter': maxiter,
        'outer': outer,
        'rate': rate,
        'r': r,
        'size': size,
        's': s,
        'start_scale': startScale,
        'start_x': startX,
        'start_y': startY,
      };
}
